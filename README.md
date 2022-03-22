
crontab -e
添加下面的内容
PATH=/usr/bin/:/bin:/usr/local/bin

#每天晚上23:59重启yabai套件,防止内存占用过高
59 23 * * * brew services restart yabai
59 23 * * * brew services restart spacebar
59 23 * * * brew services restart skhd:

