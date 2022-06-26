#!/bin/bash

message=$1

git add .

git commit -m "$message"

git push

docker-compose up

cp -R _site/ ../sanfyin.github.io

cd ../sanfyin.github.io

git add .

git commit -m "$message"

git push


