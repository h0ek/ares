#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
#Updating repos
echo ''
echo '--REPOSITORY UPDATE---'
echo ''
apt update
#distro update
echo ''
echo '--DISTRO UPGRADE---'
apt dist-upgrade -y
#cleanup
echo ''
echo '--CLEANUP AFTER UPGRADE---'
apt autoremove -y && apt autoclean
#update tools from github
echo ''
echo '--CHECK AND UPDATE CUSTOM TOOLS FROM GIT--'
echo ''
cd /opt/cryptovenom/
echo '---UPDATING -> CRYPTOVENOM'
echo ''
git pull
echo ''
echo '---UPDATING -> DSSS'
echo ''
cd /opt/DSSS/
git pull
echo ''
echo '---UPDATING -> EMAGNET'
echo ''
cd /opt/emagnet/
git pull
echo ''
echo '---UPDATING -> FINLRECON'
echo ''
cd /opt/FinalRecon/
git pull
echo ''
echo '---UPDATING -> GOLISMERO'
echo ''
cd /opt/golismero/
git pull
echo ''
echo '---UPDATING -> HIDDENEYE'
echo ''
cd /opt/HiddenEye/
git pull
echo ''
echo '---UPDATING -> KATANA'
echo ''
cd /opt/Katana/
git pull
echo ''
echo '---UPDATING -> KAWAIIDAUTHER'
echo ''
cd /opt/KawaiiDeauther/
git pull
echo ''
echo '---UPDATING -> KONAN'
echo ''
cd /opt/konan/
git pull
echo ''
echo '---UPDATING -> LINUX-SMART-ENUMERATION'
echo ''
cd /opt/linux-smart-enumeration/
git pull
echo ''
echo '---UPDATING -> NEKOBOTV1'
echo ''
cd /opt/NekoBotV1/
git pull
echo ''
echo '---UPDATING -> OKADMINFINDER3'
echo ''
cd /opt/okadminfinder3/
git pull
echo ''
echo '---UPDATING -> OPENRELAYMAGIC'
echo ''
cd /opt/OpenRelayMagic/
git pull
echo ''
echo '---UPDATING -> ORBIT'
echo ''
cd /opt/Orbit/
git pull
echo ''
echo '---UPDATING -> RAPIDSCAN'
echo ''
cd /opt/rapidscan/
git pull
echo ''
echo '---UPDATING -> RECONDOG'
echo ''
cd /opt/ReconDog/
git pull
echo ''
echo '---UPDATING -> SQLIV'
echo ''
cd /opt/sqliv/
git pull
echo ''
echo '---UPDATING -> SUBLIST3R'
echo ''
cd /opt/Sublist3r/
git pull
echo ''
echo '---UPDATING -> TAKEOVER'
echo ''
cd /opt/takeover/
git pull
echo ''
echo '---UPDATING -> TRAXSS'
echo ''
cd /opt/uDork/
git pull
echo ''
echo '---UPDATING -> VULNX'
echo ''
cd /opt/vulnx/
git pull
echo ''
echo '---UPDATING -> W3AF'
echo ''
cd /opt/w3af/
git pull
echo ''
echo '---UPDATING -> WEBKILLER'
echo ''
cd /opt/webkiller/
git pull
echo ''
echo '---UPDATING -> WIFIBROOT'
echo ''
cd /opt/WiFiBroot/
git pull
echo ''
echo '---UPDATING -> XSS-LOADER'
echo ''
cd /opt/XSS-LOADER/
git pull
echo ''
echo '---UPDATING -> XSSTRIKE'
echo ''
cd /opt/XSStrike/
git pull
echo ''
echo '---ALL DONE!---'
