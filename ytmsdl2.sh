#!/bin/bash
## Text splash, I am not gonna use any ASCII arts since it is way too big for most phone's screen.
## Uncomment bellow to clear the screen before the splash text
#clear
###################################################################
echo "Youtube Music Downloader version 2."
echo -e "Non distractive, simple yet powerful to download your favorite \nmusic from Youtube and Youtube Music as well."
echo "Script frontend for yt-dlp from python package."
echo " "
read -p "Enter your link (multiple links supported) : " link1
while true
 do
	echo -e "1.MP3 256Kbps (high quality). \n2.MP3 128Kbps(standard quality). \n3.M4A AAC 128Kbps (direct output). \n4.WAV (great for sampling."
	read -p "Enter the format (number) : " fmtopt
		case $fmtopt in
		1)
		yt-dlp -o '%(title)s MP3-256K.%(ext)s' -x --audio-format mp3 --audio-quality 256k "$link1"
		break
		;;
		2)
		yt-dlp -o '%(title)s MP3-128K.%(ext)s' -x --audio-format mp3 --audio-quality 128k "$link1"
		break
		;;
		3)
		yt-dlp -o '%(title)s M4A AAC.%(ext)s' -f 140 "$link1"
		break
		;;
		4)
		yt-dlp -o '%(title)s WAV.%(ext)s' -x --audio-format wav "$link1"
		;;
		*) echo "Please choose a number above." ;;
		esac
done
