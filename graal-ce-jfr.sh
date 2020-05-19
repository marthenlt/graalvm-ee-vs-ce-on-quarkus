#!/bin/bash

#Continuous recording
$GRAALVM_HOME/bin/java -Xms256m -Xmx256m -Dgraal.CompilerConfiguration=community -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording=name=GraalCEBenchmark,settings=profile -XX:FlightRecorderOptions=defaultrecording=true,dumponexit=true,loglevel=info,repository=.,dumponexitpath=./graal-ce.jfr  -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -jar target/getting-started-1.0-SNAPSHOT-runner.jar


