#!/bin/bash

url=$1

if [ -d "./websites/${url}" ]; then
  cd websites/$url
  docker compose down
  docker compose pull
  docker compose up -d
fi

cd ../..
./cleanup.sh
