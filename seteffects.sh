#!/usr/bin/env bash

payload="'{\"select\": \"$@\"}'"
echo curl -vv -g -X PUT -d "$payload" http://"$ip":16021/api/v1/"$token"/effects | bash
