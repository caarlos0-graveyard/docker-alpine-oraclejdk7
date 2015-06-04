#!/bin/bash
docker build -t caarlos0/alpine-oraclejdk7 .
docker build -t caarlos0/alpine-oraclejdk7-mvn -f Dockerfile.mvn .
