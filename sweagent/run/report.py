from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Optional, Tuple, Union
from dataclasses_json import config, dataclass_json

from multi_swe_bench.harness.constant import (
    FIX_PATCH_RUN_LOG_FILE,
    REPORT_FILE,
    RUN_LOG_FILE,
    TEST_PATCH_RUN_LOG_FILE,
)
from multi_swe_bench.harness.instance import Instance
from multi_swe_bench.harness.test_result import Test, TestResult, TestStatus
from multi_swe_bench.harness.report import Report, ReportTask

@dataclass_json
@dataclass
class EnvReport(Report):
    env_pass_tests: dict[str, Test] = field(default_factory=dict)
    env_id: str = ""

    def __post_init__(self):
        if not self.run_result:
            raise ValueError("Invalid run_result: None")
        if not self.test_patch_result:
            raise ValueError("Invalid test_patch_result: None")
        if not self.fix_patch_result:
            raise ValueError("Invalid fix_patch_result: None")

        ## only consider for run and fix stage
        ## In env configurature task， tests in the fix_patch_result should be the same with those in run_result, if LLM successfully configurature the environment
        all_tests = (
            self.run_result._tests.keys()
            | self.fix_patch_result._tests.keys()
        )
        
        #Forming predition tests status dict
        for test_name in all_tests:  
            run = self.run_result._tests.get(test_name, TestStatus.NONE)
            test = self.test_patch_result._tests.get(test_name, TestStatus.NONE)
            fix = self.fix_patch_result._tests.get(test_name, TestStatus.NONE)
            self._tests[test_name] = Test(run, test, fix)

        self.valid, self.error_msg = self.check()


    def check(self, force: bool = False) -> Tuple[bool, str]:
        if not force and self.valid is not None:
            return (self.valid, self.error_msg)
         
        # 在这里有一些提前的判断，并构造自己的p2p_tests, f2p_tests, s2p_tests, n2p_tests
        # 1. Exist valid fix patch result
        if self.fix_patch_result.all_count == 0:
            self.valid = False
            self.error_msg = (
                f"There is no valid fix patch result: {self.short_report()}"
            )
            return (self.valid, self.error_msg)

        # 2. Exist some failures
        for name, test in self._tests.items():
            if test.run == TestStatus.PASS and test.fix == TestStatus.FAIL:
                self.valid = False
                self.error_msg = f"Test passed in run stage but failed in fix stage: {self.short_report()}. `{name}`: {test}"
                return (self.valid, self.error_msg)

        for name, test in self._tests.items():
            if test.fix == TestStatus.PASS:
                self.env_pass_tests[name] = test

        self.valid = True
        self.error_msg = ""
        return (self.valid, self.error_msg)


def generate_report(
    instance: Instance,
    run_result: Union[str, TestResult],
    test_patch_result: Union[str, TestResult],
    fix_patch_result: Union[str, TestResult],
) -> Report:
    if isinstance(run_result, str):
        run_result = instance.parse_log(run_result)
    if isinstance(test_patch_result, str):
        test_patch_result = instance.parse_log(test_patch_result)
    if isinstance(fix_patch_result, str):
        fix_patch_result = instance.parse_log(fix_patch_result)

    report = EnvReport(
        org=instance.pr.org,
        repo=instance.pr.repo,
        number=instance.pr.number,
        run_result=run_result,
        test_patch_result=test_patch_result,
        fix_patch_result=fix_patch_result,
    )
    return report


class EnvReportTask(ReportTask):
    env_id: str = ""
    
    def generate_report(
        self,
        run_log: Optional[Union[str, TestResult]] = None,
        test_patch_run_log: Optional[Union[str, TestResult]] = None,
        fix_patch_run_log: Optional[Union[str, TestResult]] = None,
        regen: bool = True,
    ) -> EnvReport:
        if not regen:
            report_path = self.instance_dir / REPORT_FILE
            if report_path.exists():
                with open(report_path, "r", encoding="utf-8") as f:
                    report = EnvReport.from_json(f.read())
                return report

        report = generate_report(
            self.instance,
            run_log or self.run_log,
            test_patch_run_log or self.test_patch_run_log,
            fix_patch_run_log or self.fix_patch_run_log,
        )
        ## for clarify to analyse
        with open(self.instance_dir / REPORT_FILE, "w", encoding="utf-8") as f:
            f.write(report.json())

        return report

