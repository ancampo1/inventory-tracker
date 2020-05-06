#!/bin/bash


read -p "Enter the item number you want to delete: " itemNumber

if [ ! -s data/${itemNumber}.item ]; then
    echo "I'm sorry, the item you tried to remove doesnt exist"

fi

if [  -s data/${itemNumber}.item ]; then
    rm  data/${itemNumber}.item
    echo "File $itemNUmber has been removed"
fi

echo [date] "DELETED: $itemNumber - $itemName - $currentQuant / $maxQuant" >> data/queries.log


