#!/bin/bash

START=$(date +%s.%N)

echo
echo -e "          \e[5m\e[32m***************************\e[0m"
echo -e "          \e[5m\e[32m* \e[0m\e[5m\e[92m\e[1mS3xyL1nux url shortener\e[0m \e[5m\e[32m*\e[0m"
echo -e "          \e[5m\e[32m***************************\e[0m"

echo
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mchoose service by a number 1 or 2: (1 for tny.im) or (2 for is.gd)\e[0m"
read service

if [ $service == 1 ]; then
echo
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mtny.im has been choosen!\e[0m"
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))menter your long url\e[0m"
read url
tnyim=`wget -q -O - http://tny.im/yourls-api.php?action=shorturl\&format=simple\&url=$url\&keyword=$2`     
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))myour short url is: $tnyim\e[0m"
echo
fi

if [ $service == 2 ]; then
echo
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mis.gd has been choosen!\e[0m"
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))menter your long url\e[0m"
read url
isgd=`wget -q -O - https://is.gd/create.php\?format\=simple\&url\=$url`  
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))myour short url is: $isgd\e[0m"
echo
fi

if [ $service != 1 ] && [ $service != 2 ]; then
echo
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))minvalid number\e[0m"
echo
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mexit.\e[0m"
echo
exit 1
fi

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)

echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mloading time $DIFF seconds\e[0m"
echo -e "\e[1m\e[3$(( $RANDOM * 6 / 32767 + 1 ))mend.\e[0m"
