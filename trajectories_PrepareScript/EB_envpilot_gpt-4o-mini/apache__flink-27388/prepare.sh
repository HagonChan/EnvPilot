
ls -R
open "azure-pipelines.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
apt-get install -y python3-dev net-tools zip bc libapr1 libssl1.0.0 git curl wget
apt-get install -y python3-dev net-tools zip bc libapr1 libssl-dev git curl wget
./mvnw clean package -DskipTests -Djdk17 -Pjava17-target
./mvnw test
ls -l flink-core/target/surefire-reports
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.ExecutionConfigTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.RestartStrategyDescriptionUtilsTest.xml"
ls -l flink-core/target/surefire-reports
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AverageAccumulatorTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.DoubleMaximumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.DoubleMinimumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.IntMaximumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.IntMinimumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.LongMaximumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.LongMinimumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.StringAccumulatorTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.StringMaximumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.StringMinimumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.StringSumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.SumAccumulatorTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.ValueAccumulatorTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.ValueMaximumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.ValueMinimumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.ValueSumTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.ValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"
open "flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.accumulators.AccumulatorWithValueTest.xml"

