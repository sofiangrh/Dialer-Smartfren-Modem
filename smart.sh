#!/bin/bash
# Shell script sederhana untuk men-dial modem smartfren
# Diuji pada Ubuntu 12.04 Precise Pangolin
# ----------------------------------------------------------------------------
# Ditulis oleh Anna Erdiawan <http://erdinote.com/>
# (c) 2012 erdinote.com under CC-BY-SA
# <http://creativecommons.org/licenses/by-sa/3.0/>
# ----------------------------------------------------------------------------
# Terakhir diupdate: 14/Aug/2014
# ----------------------------------------------------------------------------

[[ $(id -u) -ne 0 ]] && { echo "$0: Anda harus masuk sebagai Root untuk menjalankan script ini, jalankan perintah 'sudo $0'"; exit 1; }


read -p "Muat driver dan jalankan dial? (y/t) :" jwb;
if [ $jwb == y ] || [ $jwb == Y ];
then
	sudo modprobe usbserial vendor=0x201e product=0x1022
	echo "Driver berhasil dimuat !"
	sleep 1
	echo "Tunggu beberapa detik untuk melakukan dial !"
	sleep 5
	sudo wvdial smart
	exit 1
else
	echo "Dibatalkan"
	echo ""
	exit 1
fi
done
