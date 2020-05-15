#!/bin/bash

echo "3 testings, each with 20,000,000 (20 millions) iterations"

time curl http://localhost:8080/graal/benchmark/20000000
sleep 1
time curl http://localhost:8080/graal/benchmark/20000000
sleep 1 
time curl http://localhost:8080/graal/benchmark/20000000

