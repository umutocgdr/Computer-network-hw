#Nazım Umut Öçgüder 1712220036

SAYAC=0
  while [  $SAYAC -lt 10 ]; do
      echo "packet from client",$SAYAC,"packet from client",`date` | socat - TCP4:localhost:5001
      SAYAC=$(expr $SAYAC + 1)
      echo "CLIENT-->TCP4: [{""packet from client""} {$SAYAC}] {`date`}" >> client.txt
  done
  
SAYAC=0
  while [  $SAYAC -lt 10 ]; do
      echo "packet from client",$SAYAC,"packet from client",`date` | socat - UDP4:localhost:5001
     SAYAC=$(expr $SAYAC + 1)
     echo "CLIENT-->UDP4: [{""packet from client""} {$SAYAC}] {`date`}" >> client.txt
  done
