#!/bin/bash

echo "10 testings, each with 20,000,000 (20 millions) iterations and followed by 0.5 second sleep"

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
