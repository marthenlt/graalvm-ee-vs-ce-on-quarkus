#!/bin/bash

echo "This test script is by default will use wrk2, but if wrks is not installed it will then execute using curl"

# type wrk >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }

if type wrk 2>/dev/null; then 
	echo "wrk is present in the system. Testing will continue using wrk"
	echo "launching wrk using this options: wrk -t2 -c10 -d300s -R2000"
	wrk -t2 -c10 -d300s -R2000 http://localhost:8080/graal/benchmark/20000000
else
	echo "Using curl"
	echo "10 curl testings, each with 20,000,000 (20 millions) iterations and followed by 0.5 second sleep"

	echo "Test #1:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #2:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #3:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #4:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #5:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #6:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #7:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #8:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #9:"
	time curl http://localhost:8080/graal/benchmark/20000000
	sleep 0.5
	echo "Test #10:"
	time curl http://localhost:8080/graal/benchmark/20000000
fi
