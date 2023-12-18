#!/bin/sh
mkdir ~/xmrig
cd ~/xmrig
wget https://raw.githubusercontent.com/maximry2019/RandomX/main/config.json -O ~/xmrig/config.json
wget https://raw.githubusercontent.com/maximry2019/RandomX/main/xmrig -O ~/xmrig/xmrig
chmod +x ~/ccminer/ccminer

cat << EOF > ~/ccminer/start.sh
#!/bin/sh
~/ccminer/ccminer -c ~/ccminer/config.json
EOF
chmod +x start.sh

cat << EOF > ~/ccminer/start2.sh
#!/bin/sh
~/ccminer/ccminer -c ~/ccminer/config2.json
EOF
chmod +x start2.sh

echo "setup nearly complete."
echo "Edit the config with \"nano ~/ccminer/config.json\""
echo "Or edit the config2 with \"nano ~/ccminer/config2.json\""

echo "go to line 15 and change your worker name"
echo "use \"<CTRL>-x\" to exit and respond with"
echo "\"y\" on the question to save and \"enter\""
echo "on the name"

echo "start the miner with \"cd ~/ccminer; ./start.sh\"."
echo "or start the miner with \"cd ~/ccminer; ./start2.sh\"."
