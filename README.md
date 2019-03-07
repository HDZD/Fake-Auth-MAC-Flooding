# Fake-Auth-WiFi-DOS
A Denial Of Service attack targeting wifi networks through flooding the wifi network with authentication requests using fake mac addresses



<b> Usage </b>



first install aircrack-ng since you will need aireplay-ng to use the script:


-sudo apt install aircrack-ng


now set your wireless adapter to monitor mode:


-airmon-ng start (your wireless adapter name)


now you can run the script by giving it the following parameters

-Number of fake authentication requests through different mac addresses

-target network mac address

-monitor mode adapter name

the command should look something like:


-sudo ./fake_auth.sh 99 00:00:00:00:00:00 wlan0mon
