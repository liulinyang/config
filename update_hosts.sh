HORUS=horusapi-ibeta.trendmicro.com
IP=`dig @8.8.8.8 $HORUS +short | tail -n1`

CMD=`cat <<EOF
if grep $HORUS /etc/hosts;  then sed 's/.*horusapi-ibeta.trendmicro.com/$IP horusapi-ibeta.trendmicro.com/' /etc/hosts; else echo '$IP horusapi-ibeta.trendmicro.com'>>/etc/hosts; fi
EOF`

#echo $CMD
#sshpass -p 111111 ssh  -o "StrictHostKeyChecking no" root@10.202.241.52 uptime
sshpass -p 111111 ssh  -o "StrictHostKeyChecking no" root@10.202.241.52 $CMD
~

