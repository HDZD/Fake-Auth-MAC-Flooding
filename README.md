# Fake-Auth-MAC-Flooding
A Denial Of Service attack targeting wifi networks through flooding the wifi network with authentication requests using fake mac addresses



<b> Usage </b>



first install aircrack-ng since you will need aireplay-ng to use the script:


    -sudo apt install aircrack-ng


now set your wireless adapter to monitor mode:


    -airmon-ng start (your wireless adapter name)
    
   
Before running the script, chmod it to make it executable


    -chmod u+x ./fake_auth.sh
    

now you can run the script by giving it the following parameters

1)Number of fake authentication requests through different mac addresses

2)target network mac address

3)monitor mode adapter name

the command should look something like:


    -sudo ./fake_auth.sh 99 00:00:00:00:00:00 wlan0mon
