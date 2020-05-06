#!/bin/bash


read -p  "Enter an item number: " item
###conditional###
if [ ! -r data/$item.item ]; then
    echo "I'm sorry, $item does not exist"
    exit 1
fi

if [ -r data/$item.item ]; then
  {
      read name simpName
      read oldUnitPrice quant max 
      read description 
  
  } < data/$item.item

fi


read -p "Enter an item name(with no spaces): " itemName throwaway
#conditional

if  [ -z "$itemName" ]; then
  # echo "1"
   itemName="$name"
fi


read -p "Enter a simple name for the product: " simpleName
#conditional

if  [ -z "$simpleName" ]; then
      #echo "2"
      simpleName="$simpName"
fi


read -p "Enter a unit price: " unitPrice
#conditional

if  [ -z "$unitPrice" ]; then
     #  echo "3"
       unitPrice="$oldUnitPrice"
fi


read -p "Enter the current quantity of the item in inventory: " currentQuant
#conditional

if  [ -z "$currentQuant" ]; then
    #     echo "4"
      currentQuant="$quant"
fi


read -p "Enter the max quantity of said item: " maxQuant
#conditional

if  [ -z "$maxQuant" ]; then
      echo "5"
      maxQuant="$max"
fi


read -p "Enter the item's description: " itemDescription
#conditional


if  [ -z "$itemDescription" ]; then
      echo "6"
      itemDescription="$description"
fi


firstLine="${itemName}  ${simpleName}"
secondLine="${unitPrice} ${currentQuant} ${maxQuant}"
lastLine="${itemDescription}"

    echo $firstLine > data/${item}.item
    echo $secondLine >> data/${item}.item
    echo $lastLine >> data/${item}.item

echo [date] "UPDATE: $itemNumber - $itemName - $currentQuant / $maxQuant" >> data/queries.log



