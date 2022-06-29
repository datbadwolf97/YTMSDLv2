#!/bin/bash
while true
 do
	read -p "Full or half? h/help for details. : " instopt
	case $instopt in
		full|Full)
		apt update && apt upgrade -y
		apt install ffmpeg python -y
		pip install yt-dlp
		cp ytmsdl2.sh ytmsdl2 && mv ytmsdl2 $PREFIX/bin
		chmod u+x $PREFIX/bin/ytmsdl2
		break
		;;
		half|no)
		apt update && apt upgrade -y
		apt install ffmpeg python
		pip install yt-dlp
		break
		;;
		help|h)
		echo -e "1.Full \nInstalling all depedencies, automatically copy the script to /bin for quick access."
		echo -e "2.Half \nInstalling all depedencies, but does not copy the script to /bin."
		echo -e "3. Help \nThis page."
		echo -e "4. Cancel/C \nExits this script and leaves no actions."
		;;
		cancel|c|C|Cancel)
		echo "Installation cancelled."
		break
		;;
		*) echo "Please select an option above." ;;
		esac
done
