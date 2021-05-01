

function greenMessage {
    echo -e "\\033[32;1m${@}\033[0m"
}

function kekMessage {
    echo -e "\\033[36;1m${@}\033[0m"
}

if [ -z "$1" ]
then
echo "./jayte90.sh (Worker Name)"
exit 0
fi


ADRESS = $1


clear
greenMessage "################################################"
kekMessage""
kekMessage  "                    XMR Miner"
kekMessage  "                 Creat by Jay Te"
kekMessage  "              _____________________"
kekMessage ""
kekMessage""
greenMessage "################################################"
sleep 2
kekMessage  "               Cai Dat Cac Goi Du Lieu"
sleep 1
apt install software-properties-common
sleep 1
add-apt-repository ppa:jonathonf/gcc-7.1
sleep 1
apt update
sleep 1
yes | apt upgrade
sleep 1
yes | apt install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7
sleep 1
yes | apt install libhwloc-dev
sleep 1
git clone https://github.com/xmrig/xmrig.git
sleep 1
cd xmrig
sleep 1
mkdir build
sleep 1
cd build
sleep 1
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
sleep 1
make
sleep 1
./xmrig -o pool.supportxmr.com:443 -u 8BLeX4inNtt7GVajrgJhvvARuB25FhNhtbHCuWBoAZvsQ1h3b2eaBd2gJJQz5gD4RGg3uSKWw5gtqiwKag9C7gSz7E1EmbM -k --tls -p $1 --background
