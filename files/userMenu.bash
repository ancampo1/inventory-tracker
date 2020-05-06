#!/bin/bash
# Antonio Campos
# KXM210
# Systems Assignment 1


go=0
while [ $go ];do
    
    echo "Enter one of the following actions or press CTRL-D to exit"
    echo "  C - create a new inventory system"
    echo "  R - read  a new inventory system"
    echo "  U - update a new inventory system"
    echo "  D - Delete an existing  inventory system"
    echo "  T - calculate total value of an inventory system"


    if ! read ans; then
        echo "Have a good day, goodbye!"
        break;
    
    fi
    case "$ans" in
       [Cc]) #echo "Create"
           ./create.bash
            #add conditionals
           echo ""
           ;;
        [Rr]) #echo "Read"
            ./read.bash
            #DONE
           echo " "
            ;;
            
        [Uu]) #echo "Update"
            ./update.bash
            echo " "
            ;;
        [Dd]) #echo "Delete"
            ./delete.bash
            #DONE
            echo " "
          ;;
        [Tt]) #echo "Total"
            ./total.bash
            #DONE
            ;;
        *) echo "You chose an improper option"
    
    
    
    
    
    esac
done




