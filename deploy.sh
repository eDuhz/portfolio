#!/bin/bash

#git pull
docker build -t 'portfolio' .
sleep 5
docker-compose up -d

