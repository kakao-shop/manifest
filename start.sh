#!/bin/bash
echo "\n\n========== step 1. product data setting! ==========\n\n"
sudo npm install elasticdump -g
elasticdump --input=./bank1113.json --output=http://elk-master:9200
echo "\n\n========== step 1. finish ==========\n\n"
sleep 2

echo "\n\n========== step 2. alias setting! ==========\n\n"
curl -X POST "http://192.168.56.110:9200/_aliases" -H 'Content-Type: application/json' -d '{
    "actions": [
        {
            "add" : {
                "index" : "product-2022-11-13-11-30",
                "alias" : "product"
            }
        }
    ]
}'
echo "\n\n========== step 3. finish ==========\n\n"

echo "\n\n========== start routine finish! ==========\n\n"
