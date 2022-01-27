#!/bin/bash
TARGET_INDEX=mytestindex
SLEEP_INTERVAL=2

# Generate random string 
# cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 

# On Mac or BSD based
# cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1

while true 
do 
    RAND_STRING=$(cat /dev/urandom | env LC_CTYPE=C tr -dc 'a-z0-9' | fold -w 32 | head -n 1)
    curl -XPUT "http://localhost:9200/$TARGET_INDEX/_doc/$RAND_STRING" -H 'Content-Type: application/json' -d '{
 "answer": 42,
 "message": "this is my test data"
}'
    echo " $RAND_STRING"
    sleep $SLEEP_INTERVAL
done