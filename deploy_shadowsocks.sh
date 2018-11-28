yum install -y git
pip install git+https://github.com/shadowsocks/shadowsocks.git@master
cat <<'EOF' > ss_god.sh
#/bin/bash
for ip in {1..50}
do
        ssserver -p "$ip" -k hk.wwwsto -m aes-256-cfb &
        sleep 1
done
EOF
nohup sh ss_god.sh 2>&1 1>/dev/null &
