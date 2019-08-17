#! /bin/bash

end=0
turn=x
while [ $end -eq 0 ]
do  
    if [ $turn == 'x' ]
    then
        read -p "Player 1 Turn:" input
        turn=o
    else 
        read -p "Player 2 Turn:" input
        turn=x
    fi
    counter=1
    while [ $counter -le 7 ]
    do 
        if [ $counter -eq 1 -o $counter -eq 3 -o $counter -eq 5 -o $counter -eq 7 ]
        then 
            echo "------|------|------"
        elif [ $counter -eq 2 ]
        then
            if [ $input == 1 ]
            then
                echo "   $turn  |      |      "
            elif [ $input -eq 2 ]
            then
                echo "      |  $turn   |      "
            elif [ $input -eq 3 ]
            then
                echo "      |      |  $turn   "
            else
                echo "      |      |      "
            fi
        elif [ $counter -eq 4 ]
        then
            if [ $input -eq 4 ]
            then
                echo "   $turn  |      |      "
            elif [ $input -eq 5 ]
            then
                echo "      |  $turn   |      "
            elif [ $input -eq 6 ]
            then
                echo "      |      |  $turn  "
            else
                echo "      |      |      "
            fi
        elif [ $counter -eq 6 ]
        then
            if [ $input -eq 7 ]
            then
                echo "   $turn  |      |      "
            elif [ $input -eq 8 ]
            then
                echo "      |   $turn  |      "
            elif [ $input -eq 9 ]
            then
                echo "      |      |   $turn   "
            else
                echo "      |      |      "
            fi
        fi
        ((counter++))
    done

done