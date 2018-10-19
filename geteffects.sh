#!/usr/bin/env bash

effects=`curl -s http://"$ip":16021/api/v1/"$token"/effects/effectsList`
effects=${effects/[/}
effects=${effects/]/}

echo '{"items": ['

echo '{'
echo '"uuid": "Turn Off",'
echo '"title": "Turn Off",'
echo '"autocomplete": "Turn Off",'
echo '"arg": "Turn Off",'
echo '"subtitle": "Turn off the Lights"'
echo '},'

echo '{'
echo '"uuid": "Brighter",'
echo '"title": "Brighter",'
echo '"autocomplete": "Brighter",'
echo '"arg": "Brighter",'
echo '"subtitle": "Turn up the brightness"'
echo '},'

echo '{'
echo '"uuid": "Darker",'
echo '"title": "Darker",'
echo '"autocomplete": "Darker",'
echo '"arg": "Darker",'
echo '"subtitle": "Turn down the brightness"'
echo '},'

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