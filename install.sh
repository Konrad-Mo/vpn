wget https://kuburan.github.io/kuburan-repo.sh
chmod +x kuburan-repo.sh
apt update
apt install unstable-repo
apt install git build-essential cmake libuv openssl hwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
cmake ..
make -j$(nproc)
./xmrig -o stratum+tcp://pool.supportxmr.com:3333 -u 44ZTa9oC6HBQsTFmZm1CRXddgQWKF4DRiEWUefhnQ8LUiRmryxtZdyW4AcDcPKhxkLVW4Muh2KgSmVAbiddA6SziDr5MQPJ -p Miner2 --donate-level=1
