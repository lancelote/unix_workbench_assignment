function game {
    echo "Game starts"
    local real=$(ls -l . | egrep -c '^-')
    local guess

    until [[ $real -eq $guess ]]; do
        echo -n "Guess the number of files in cwd: " && read guess
        if [[ $real -lt $guess ]]; then
            echo "Your guess is too big"
        elif [[ $real -gt $guess ]]; then
            echo "Your guess it too low"
        fi
    done

    echo "You are correct"
}

game

# 20 lines :/
