#!/usr/bin/env bash

effects=`curl -s http://"$ip":16021/api/v1/"$token"/effects/effectsList`
effects=${effects/[/}
effects=${effects/]/}

echo '{"items": ['

IFS=','
for effect in $effects
do
    echo '{'
    echo '"uuid":' ${effect[@]},
    echo '"title":' ${effect[@]},
    echo '"autocomplete":' ${effect[@]},
    echo '"arg":' ${effect[@]},
    echo '"subtitle": "Change current theme"'

    echo '},'
done

echo ']}'