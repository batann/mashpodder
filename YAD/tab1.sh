#!/bin/bash

yad --plug=12345 --tabnum=1 --text="LC-Linux Podcast and Audio-Process App" --boarders=20 --form --field="Update Podcast Episodes":FBTN "sudo -u batan bash $mash_dir/lc-get-podcasts" &> res1 &\
