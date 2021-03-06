#!/bin/bash
#suave on kestrel
echo "Benchmarking Suave on Kestrel"
wrk -t12 -c400 -d30s http://localhost:8080 | tee suaveOnKestrel.txt
sleep 3
#suave on core crl
echo "Benchmarking Suave On CoreCLR"
wrk -t12 -c400 -d30s http://localhost:8081 | tee suaveOnCoreCLR.txt
sleep 3
#suave on mono
echo "Benchmarking Suave on Mono"
wrk -t12 -c400 -d30s http://localhost:8083 | tee suaveOnMono.txt
sleep 3
#plain kestrel 
echo "Benchmarking Kestrel plain"
wrk -t12 -c400 -d30s http://localhost:8085 | tee kestrelPlain.txt
sleep 3
# MVC on kestrel 
echo "Benchmarking MVC on Kestrel"
wrk -t12 -c400 -d30s http://localhost:8086 | tee mvcOnKestrel.txt
sleep 3
# NancyFx on kestrel 
echo "Benchmarking NancyFx on Kestrel"
wrk -t12 -c400 -d30s http://localhost:8087 | tee nancyFxOnKestrel.txt