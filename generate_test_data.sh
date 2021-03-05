#!/bin/bash
YEAR=2020

for MONTH in 0{1..9} {10..11}; 
do 
    for DAY in 0{1..9} {10..28};
    do
        curl -XPUT "http://localhost:9200/testdata-$YEAR-$MONTH-$DAY/test/message" -H 'Content-Type: application/json' -d '{
 "answer": 42,
 "message": "this is my test data"
}'
        echo "$day-$month";
    done 
done

curl -XPUT "http://localhost:9200/_snapshot/my-repository" -H 'Content-Type: application/json' -d '{
  "type": "fs",
  "settings": {
    "location": "tmp"
  }
}'