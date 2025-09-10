from pathlib import Path
import concurrent.futures
import logging
from typing import Any, Dict, List, Optional, Tuple, Union
from tqdm import tqdm

from multi_swe_bench.harness.dataset import Dataset
from multi_swe_bench.harness.gen_report import CliArgs as ReportBuilder

from sweagent.run.report import EnvReport, EnvReportTask
from multi_swe_bench.harness.report import FinalReport

class EnvReportBuilder(ReportBuilder):
    def gen_eval_reports(self, tasks: list[EnvReportTask]) -> tuple[list[EnvReport], list[EnvReport], list[EnvReportTask]]:
        reports: list[EnvReport] = []
        invalid_reports: list[EnvReport] = []
        failed_tasks: list[tuple[EnvReportTask, str]] = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.max_workers) as executor:

            def safe_generate_report(dataset: Dataset, task: EnvReportTask, run_log: str, test_patch_run_log: str) -> Union[Tuple[EnvReport, bool], None]:
                try:
                    report = task.generate_report(
                        run_log, test_patch_run_log, regen=self.regen
                    )
                    report.env_id = str(task.instance_dir).split('/')[-1]

                    if not report.valid: # 实际上这个valid字段没用
                        self.logger.error(
                            f"Invalid report for {task.id}, {report.short_report()}, {report.error_msg}"
                        )
                        return (report, False)

                    for test in dataset.run_result.passed_tests:  
                        if test not in report.env_pass_tests:
                            self.logger.error(
                                f"Invalid tests for {task.id}: missing {test}"
                            )
                            return (report, False)
                    return (report, True)
                except Exception as e:
                    logging.error(f"Error generating report for {task.id}: {str(e)}")
                    task.env_id = str(task.instance_dir).split('/')[-1]
                    failed_tasks.append((task, str(e)))
                    return None

            futures = [
                executor.submit(
                    safe_generate_report,
                    self.dataset[task.id],
                    task,
                    run_log=self.dataset[task.id].run_result,
                    test_patch_run_log=self.dataset[task.id].test_patch_result,
                )
                for task in tasks
                if task.id in self.dataset
            ]

            reports = []
            for future in tqdm(
                concurrent.futures.as_completed(futures),
                total=len(futures),
                desc="Generating eval reports",
            ):
                result = future.result()
                if result is None:
                    continue
                report, valid = result
                if valid:
                    reports.append(report)
                else:
                    invalid_reports.append(report)

        self.logger.info(f"Successfully generated {len(reports)} reports.")
        if failed_tasks:
            self.logger.error(f"Failed to generate {len(failed_tasks)} reports.")
            self.logger.error("Failed task list:")
            for task, error in failed_tasks:
                self.logger.error(f"  - {task.id}: {error}")
        
        return (reports, invalid_reports, [task for task, _ in failed_tasks])


class EnvFinalReport(FinalReport):
    @classmethod
    def from_reports(
        cls,
        reports: list[EnvReport],
        invalid_reports: list[EnvReport],
        failed_tasks: list[EnvReportTask] = [],
    ) -> "FinalReport":
        submitted_ids = (
            [report.env_id for report in reports]
            + [report.env_id for report in invalid_reports]
            + [task.env_id for task in failed_tasks]
        )
        completed_ids = [report.env_id for report in reports] + [
            report.env_id for report in invalid_reports
        ]
        incomplete_ids = [task.env_id for task in failed_tasks]
        resolved_ids = [report.env_id for report in reports]
        unresolved_ids = [report.env_id for report in invalid_reports]
        empty_patch_ids = []
        error_ids = [task.env_id for task in failed_tasks]

        final_report = FinalReport(
            total_instances=len(reports) + len(invalid_reports) + len(failed_tasks),
            submitted_instances=len(submitted_ids),
            completed_instances=len(completed_ids),
            incomplete_instances=len(incomplete_ids),
            resolved_instances=len(resolved_ids),
            unresolved_instances=len(unresolved_ids),
            empty_patch_instances=len(empty_patch_ids),
            error_instances=len(error_ids),
            submitted_ids=submitted_ids,
            completed_ids=completed_ids,
            incomplete_ids=incomplete_ids,
            resolved_ids=resolved_ids,
            unresolved_ids=unresolved_ids,
            empty_patch_ids=empty_patch_ids,
            error_ids=error_ids,
        )

        return final_report


def gen_report(tasks: list[EnvReportTask], output_dir: Path, instances_path: Path):
    reports, invalid_reports, failed_tasks = EnvReportBuilder(
        mode="evaluation",
        workdir= output_dir,
        output_dir= output_dir,
        specifics=[],
        skips=[],
        raw_dataset_files=None,
        dataset_files= [str(instances_path)],
        max_workers= 8,
        log_dir= output_dir / "logs",
        log_level= 'DEBUG',
        log_to_console= True
    ).gen_eval_reports(tasks)
    final_report = EnvFinalReport.from_reports(reports, invalid_reports, failed_tasks)
    with open(output_dir/ "final_report.json", "w", encoding="utf-8") as f:
        f.write(final_report.to_json(indent=4, ensure_ascii=False))


