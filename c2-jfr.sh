#!/bin/bash

#Continuous recording
$GRAALVM_HOME/bin/java -Xms256m -Xmx256m -XX:-UseJVMCICompiler -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording=name=C2Benchmark,settings=profile -XX:FlightRecorderOptions=defaultrecording=true,dumponexit=true,loglevel=info,repository=.,dumponexitpath=./c2.jfr  -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -jar target/getting-started-1.0-SNAPSHOT-runner.jar


