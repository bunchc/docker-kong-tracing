#!/bin/sh

# Kill the script when ctrl-c is hit
trap "kill 0" EXIT

# Install decK
curl -sL https://github.com/kong/deck/releases/download/v1.11.0/deck_1.11.0_linux_amd64.tar.gz -o deck.tar.gz
tar -xf deck.tar.gz -C /tmp
sudo cp /tmp/deck /usr/local/bin/
sudo chmod +x /usr/local/bin/deck

while true; do
  http --ignore-stdin kong:8000 host:echo.dev apikey:testUserKey lol=$[($RANDOM%100)+1]
sleep $[($RANDOM % 10)+1]
done
