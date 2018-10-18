#!/usr/bin/env bash

if [ "$*" == "Turn Off" ]; then
    curl -g -X PUT -d '{"on" : {"value":false}}' http://"$ip":16021/api/v1/"$token"/state
else
    payload="'{\"select\": \"$@\"}'"
    echo curl -g -X PUT -d "$payload" http://"$ip":16021/api/v1/"$token"/effects | bash
fi