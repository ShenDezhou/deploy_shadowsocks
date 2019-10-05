sed -i -- 's/mirrors.baidubce.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/yum.repos.d/CentOS-Base.repo
yum install -y git
easy_install pip
pip install git+https://github.com/shadowsocks/shadowsocks.git@master
cat <<'EOF' > ss_god.sh
#/bin/bash
for ip in {31..50}
do
        ssserver -p "$ip" -k tw.wwwsto -m aes-256-gcm &
        sleep 1
done
EOF
nohup sh ss_god.sh 2>&1 1>/dev/null &
