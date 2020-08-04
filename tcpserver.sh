#Nazım Umut Öçgüder 1712220036

fonksiyon() {
   while read -r line; do
       echo "TCP-->: [{$line}] {`date`}" >> tcplog.txt
   done
}
socat TCP4-LISTEN:20002,fork - | fonksiyon
