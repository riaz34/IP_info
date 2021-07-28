#!/bin/bash

echo "Enter the IP: "
read ip

echo ""

if [ "$ip" == "" ];
then
   echo " Give an IP please:) "
   exit
fi

rp=$(curl http://ip-api.com/json/$ip -s)

status=$(echo $rp | jq '.status' -r)

if [ "$status" == "success" ];
then

echo "##############(START)##############"
  country=$(echo $rp | jq '.country' -r)
  echo "Country :::-> $country"

echo "###################################"

  countryCode=$(echo $rp | jq '.countryCode' -r)
  echo "Country Code :::-> $countryCode"

echo "###################################"

  region=$(echo $rp | jq '.region' -r)
  echo "region :::-> $region"

echo "###################################"

  regionName=$(echo $rp | jq '.regionName' -r)
  echo "Region Name :::-> $regionName"

echo "###################################"

  city=$(echo $rp | jq '.city' -r)
  echo "City :::-> $city"

echo "###################################"

  timezone=$(echo $rp | jq '.timezone' -r)
  echo "Time zone :::-> $timezone"

echo "###################################"

 continentCode=$(echo $rp | jq '.continentCode' -r)
  echo "Continent Code :::-> $continentCode"

echo "###################################"

  lon=$(echo $rp | jq '.lon' -r)
  echo "Longitude :::-> $lon"

echo "###################################"

  lat=$(echo $rp | jq '.lat' -r)
  echo "Latitude :::-> $lat"

echo "####################################"

  continent=$(echo $rp | jq '.continent' -r)
  echo "Continent :::-> $continent"

echo "####################################"

  isp=$(echo $rp | jq '.isp' -r)
  echo "ISP :::-> $isp"

echo "####################################"

  org=$(echo $rp | jq '.org' -r)
  echo "Organization :::-> $org"

echo "##############(END)#################"
fi
