#Nazım Umut Öçgüder 1712220036

SAYAC=0

fonksiyon() {
   while read -r line; do
       echo "ROUTER-->$1: [{$line}] {`date`}" >> route.txt
       if [ "$1" == "TCP4" ]
        then
            echo $line | socat - TCP4:localhost:20002
        else
            echo $line | socat - UDP4:localhost:10001
        fi
   done
}
socat TCP4-LISTEN:5001,fork - | fonksiyon "TCP4" &
socat -T0.5 UDP4-LISTEN:5001,fork - | fonksiyon "UDP4"
