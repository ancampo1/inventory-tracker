#!/bin/bash


read -p "Enter an item number: " itemNum

##read files in
if [ ! -r data/$itemNum.item ]; then
    echo "I'm sorry the item you tried to find does not exist"
    exit 1
fi
if [ -r data/$itemNum.item ]; then
  {
      read name simplieName
      read unitPrice quant max 
      read description 
  
  } < data/$itemNum.item
fi

product=$(echo "${unitPrice} * $quant" | bc)
echo  "$name - $simplieName - ($unitPrice X $quant) ${product}"
