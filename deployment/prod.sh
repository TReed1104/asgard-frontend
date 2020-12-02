#!/bin/sh
echo ---------------------------------------
echo Deployment Start - Production
echo ---------------------------------------
echo Building and Deploying Asgard App
echo ---------------------------------------
docker-compose -p asgard-app -f docker-compose.yml up -d --build --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard-app'