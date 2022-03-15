#!/bin/sh

trap "kill 0" EXIT
while true; do
  http :8000 host:echo.dev lol=$[($RANDOM%100)+1]
sleep $[($RANDOM % 10)+1]
done
