#!/bin/sh
echo ---------------------------------------
echo Deployment Start - Development
echo ---------------------------------------
echo Building and Deploying Asgard App
echo ---------------------------------------
docker-compose -p asgard-app-dev -f docker-compose.dev.yml up -d --build --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard-app'