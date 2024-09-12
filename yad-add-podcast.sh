#!/bin/bash
clear
cp mp.conf mp.conf.$(date +%j)
abc=$(yad --title "Add a New Podcast Subscription" --buttons-layout="spread" --width=500 --hwight=400  --borders=20 --image="/home/batan/100/icons/icon.podcast.96.png" --form \
	--field="RSS Feed-URL:" \
	--field="Directory:" \
	--field="Nu of latest episodes:":NUM \
)
clear
mkdir -p podcasts/$(echo $abc|sed 's/|/ /g'|awk '{print $2}')
echo -e "\033[31mThe following code was added to your podcast configuration file:\n \033[37m$(echo $abc|sed 's/|/ /g')\033[0m"
echo $abc|sed 's/|/ /g' >> mp.conf
#kitty sudo -u batan bash $HOME/mashpodder/lc-get-podcasts

