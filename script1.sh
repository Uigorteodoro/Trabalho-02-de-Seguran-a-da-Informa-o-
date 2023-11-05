apt update
apt install net-tools
#sudo ip link set enp0s3 down
route del default gw 10.0.2.2
route add default gw 192.168.52.254