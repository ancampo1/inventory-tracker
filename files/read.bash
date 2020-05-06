#!/bin/bash



read -p  "Enter an item number: " item
###conditional###
if [ ! -r data/$item.item ]; then
    echo "I'm sorry, $item does not exist"
    exit 1
fi

if [ -r data/$item.item ]; then
  {
      read name simplieName
      read unitPrice quant max 
      read description 
  
  } < data/$item.item
fi

echo " "
echo "Item Number:     $item"
echo "Item Name:       $name"
echo "Simple Name:     $simplieName"
echo "Unit Price:      $unitPrice"
echo "Quantity:        $quant / $max"
echo "Description:     $description"
