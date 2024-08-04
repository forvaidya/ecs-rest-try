#!/bin/bash
docker kill test-rest-api || :
docker rm test-rest-api || :
