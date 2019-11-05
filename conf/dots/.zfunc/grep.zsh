function between() { 
    while read line
    do
        echo $line | awk -F "$1" '{print $2}' | awk -F"$2" '{print $1}'
    done
}