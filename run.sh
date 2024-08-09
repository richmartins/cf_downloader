#!/usr/bin/env bash

for song in $(cat list.txt); do
	yt-dlp --ignore-errors -x --audio-format mp3 $song;
done

rename 's/\s\[.{11}\](?=\.mp3)//g' *.mp3;
