#!/usr/bin/env bash
if [ "$*" == "Brighter" ]; then
    curl -g -X PUT -d '{"brightness" : {"increment":33}}' http://"$ip":16021/api/v1/"$token"/state
elif [ "$*" == "Darker" ]; then
    curl -g -X PUT -d '{"brightness" : {"increment":-33}}' http://"$ip":16021/api/v1/"$token"/state
elif [ "$*" == "Turn Off" ]; then
    curl -g -X PUT -d '{"on" : {"value":false}}' http://"$ip":16021/api/v1/"$token"/state
else
    payload="'{\"select\": \"$@\"}'"
    echo curl -g -X PUT -d "$payload" http://"$ip":16021/api/v1/"$token"/effects | bash
fi