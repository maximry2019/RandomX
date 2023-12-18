#!/bin/sh
mkdir ~/xmrig
cd ~/xmrig
wget https://raw.githubusercontent.com/maximry2019/RandomX/main/config.json -O ~/xmrig/config.json
wget https://raw.githubusercontent.com/maximry2019/RandomX/main/xmrig -O ~/xmrig/xmrig
chmod +x ~/xmrig/xmrig

cat << EOF > ~/xmrig/start.sh
#!/bin/sh
~/xmrig/xmrig -o de.zephyr.herominers.com:1123 -u ZEPHYR2KyQca6cZXXqKMFHiVxUNSPPnAnWYsmtwTm2mT61VTkWRs8BcTZdWKQRcE5pRDZbLhhV2XCVrzoHUL6H5jaKsfoERLpQR5N -p S8-1 -a rx/0 -k -t 8
EOF
chmod +x start.sh

echo "start the miner with \"cd ~/xmrig; ./start.sh\"."
