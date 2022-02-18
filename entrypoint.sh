#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = ${port}
bind_udp_port = ${port}
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
