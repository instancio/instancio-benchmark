#!/bin/sh

mvn clean package

java -jar target/benchmarks.jar org.instancio.benchmark.InstancioBenchmarks | tee results-$(date -u +%FT%T.%3NZ).out
