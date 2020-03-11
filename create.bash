#!/bin/bash


read -p "Enter an item number: " itemNumber
#conditional
if [  -s "data/${itemNumber}.item" ] ; then
    echo  "ERROR: item $itemNumber already exists"
    exit  1
fi


read -p "Enter an item name(with no spaces): " itemName throwaway
#conditional

read -p "Enter a simple name for the product: " simpleName
#conditional

read -p "Enter a unit price: " unitPrice
#conditional

read -p "Enter the current quantity of the item in inventory: " currentQuant
#conditional

read -p "Enter the max quantity of said item: " maxQuant
#conditional

read -p "Enter the item's description: " itemDescription
#conditional


count=0
if  [ -z "$itemName" ]; then
  # echo "1"
    ((count=count+1))
fi

if  [ -z "$simpleName" ]; then
  # echo "1"
    ((count=count+1))
fi

if  [ -z "$unitPrice" ]; then
  # echo "1"
    ((count=count+1))
fi

if  [ -z "$currentQuant" ]; then
  # echo "1"
    ((count=count+1))
fi


if  [ -z "$maxQuant" ]; then
  # echo "1"
    ((count=count+1))
fi

if  [ -z "$itemDescription" ]; then
  # echo "1"
    ((count=count+1))
fi

if (( count > 1 )); then
    echo " " 
    echo "You didnt input a command for a variable, please try again"
    exit 1
fi

firstLine="${itemName}  ${simpleName}"
secondLine="${unitPrice} ${currentQuant} ${maxQuant}"
lastLine="${itemDescription}"

if [  -s ${itemNumber}.item ]; then
    echo "Im sorry the item already exists in this inventory system. Please try again"
fi

if [ ! -s ${itemNumber}.item ]; then
    echo $firstLine > ${itemNumber}.item
    echo $secondLine >> ${itemNumber}.item
    echo $lastLine >> ${itemNumber}.item
fi

if [ ! -d data ]; then
    mkdir data

fi

if [ -d data ]; then
    mv ${itemNumber}.item data/${itemNumber}.item
fi


if [ ! -s  data/queries.log ]; then
    vim data/queries.log
fi

echo [date] "Created: $itemNumber - $itemName - $currentQuant / $maxQuant" >> data/queries.log



