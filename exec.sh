#!/bin/bash
wget https://github.com/iqbalkhan82/PresentationPrep/blob/main/Dockerfile
docker build -t prep:latest .
docker run -d --name PrepTest -p 8081:80 localhost/prep
# Run Following command to make this file executable
#chmod u+x exec.sh
