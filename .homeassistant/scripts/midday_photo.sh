#!/bin/bash
date >> /config/www/inputs_1
echo $1 >> /config/www/inputs_1
echo $2 >> /config/www/inputs_1
echo $* >> /config/www/inputs_1

curl -i -X POST -F photo=@/config/www/vstarcam_snapshot.jpg  "https://api.telegram.org/bot$1/sendPhoto?chat_id=$2&caption=Новое сообщение"
curl -i -X POST -F photo=@/config/www/boa_snapshot.jpg  "https://api.telegram.org/bot$1/sendPhoto?chat_id=$2&caption=Новое сообщение"
exit