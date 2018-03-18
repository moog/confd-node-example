#!/bin/sh

echo "downloading"
wget --quiet "https://github.com/kelseyhightower/confd/releases/download/v0.15.0/confd-0.15.0-linux-amd64"
mkdir -p /opt/confd/bin
mv "confd-0.15.0-linux-amd64" /opt/confd/bin/confd
chmod +x /opt/confd/bin/confd

export PATH="/opt/confd/bin/:$PATH"

mkdir -p /etc/confd/conf.d
mkdir -p /etc/confd/templates

mv /confd-example/confd/template.toml /etc/confd/conf.d/api.toml
mv /confd-example/confd/template.conf.tmpl /etc/confd/templates/template.conf.tmpl
mv /confd-example/confd/confd.toml /etc/confd/confd.toml

confd --onetime -node "https://ssm.$AWS_REGION.amazonaws.com"

npm start
