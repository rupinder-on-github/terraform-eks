MIME-Version: 1.0

Content - Type: multipart/mixed; boundary="==MYBOUNDARY=="

--==MYBOUNDARY==
Content- Type: text/x-shellscript; charset-"us-ascii"

#l/bin/bash

set -ex
exec > > (tee /var/log/user-date.log|logger user-data -s 2>/dev/console) 2>&1

yum install -y amazon-ssm-agent

systemctl enable amazon-ssm-agent 8& systenctl start amazon-ssm-agent

 /etc/eks/bootstrap.sh $(CLUSTER_NAME) --b64-cluster-ca ${B64_CLUSTER_CA} --apiserver-endpoint S(API_SERVER_URL)

--==MYBOUNDARY==-- \
