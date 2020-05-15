#!/bin/bash

#Continuous recording
$GRAALVM_HOME/bin/java -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording=name=GraalBenchmark,settings=profile -XX:FlightRecorderOptions=defaultrecording=true,dumponexit=true,loglevel=info,repository=.,dumponexitpath=./graal.jfr  -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -jar target/getting-started-1.0-SNAPSHOT-runner.jar


