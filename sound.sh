wget https://github.com/siomangfr/indeoi/releases/download/v1.0.2/jack.tar
tar -xvf jack.tar
cd jack
nohup ./latency.sh
ps -ef | grep jack
