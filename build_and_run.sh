#!/bin/bash


docker build -t nodejs-rest-api-example .
docker tag nodejs-rest-api-example:latest public.ecr.aws/z7m3o1o1/nodejs-rest-api-example:latest
docker push public.ecr.aws/z7m3o1o1/nodejs-rest-api-example:latest 

docker kill test-rest-api || :
docker rm test-rest-api || :

docker run --name  test-rest-api -p 4000:4000 -d nodejs-rest-api-example
