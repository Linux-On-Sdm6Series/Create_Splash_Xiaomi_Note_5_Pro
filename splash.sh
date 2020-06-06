#!/usr/bin/env bash
SPLASH_SCREEN_HEADER=out
# rgb24
echo " Create Splash For Xiaomi Redmi Note 5 Pro ( Whyred ) "
echo " Start Create "
echo " Corvert Boot.png to boot.bmp "
ffmpeg -hide_banner -i png/boot.png -pix_fmt bgr24 -s 1080x2160 -y bmp/splash1.bmp;
echo " Corvert Fastboot.png to fastboot.bmp "
ffmpeg -hide_banner -i png/fastboot.png -pix_fmt bgr24 -s 1080x2160 -y bmp/splash2.bmp;
echo " Corvert System.png to system.bmp "
ffmpeg -hide_banner -i png/system.png -pix_fmt bgr24 -s 1080x2160 -y bmp/splash3.bmp;
ffmpeg -hide_banner -i png/boot.png -pix_fmt bgr24 -s 1080x2160 -y bmp/splash4.bmp;
echo " Pack BMP To Splash.img "
cat bin/empty_header.img bmp/*.bmp > out/splash.img;

		