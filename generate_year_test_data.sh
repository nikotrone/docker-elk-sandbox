#!/bin/bash
YEAR=2021

for MONTH in 0{1..9} {10..11}; 
do 
    for DAY in 0{1..9} {10..28};
    do
        curl -XPUT "http://localhost:9200/testdata-$YEAR-$MONTH-$DAY/test/message" -H 'Content-Type: application/json' -d '{
 "answer": 42,
 "message": "this is my test data"
}'
        echo "$DAY-$MONTH";
    done 
done