#! /usr/bin/bash
ipaddr=$(curl -s www.icanhazip.com)
geoprint=$(geoiplookup $ipaddr)
iplocation=${geoprint##*:}
echo $iplocation > /home/dale/.config/conky/exiploc.txt
echo $ipaddr >> /home/dale/.config/conky/exiploc.txt
