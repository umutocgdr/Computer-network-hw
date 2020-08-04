#Nazım Umut Öçgüder 1712220036

fonksiyon() {
   while read -r line; do
       echo "UDP-->: [{$line}] {`date`}" >> udplog.txt
   done
}
socat -T 0.5 UDP4-LISTEN:10001,fork - | fonksiyon
