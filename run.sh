#!/bin/bash
docker kill test-rest-api || :
docker rm test-rest-api || :

docker run --name  test-rest-api -p 4000:4000 -d nodejs-rest-api-example
