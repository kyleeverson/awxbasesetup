
cd ~

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf -y  install docker-ce --nobest
sudo systemctl enable --now docker

curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -

sudo yum install epel-release -y
sudo yum install ansible -y
sudo yum install git -y

sudo yum install -y gcc-c++ make
sudo yum install -y nodejs

sudo pip3 install --upgrade pip

sudo pip3 install docker-compose

if [[ ! -d ansible ]]
then
	mkdir ansible
fi
cd ansible

if [[ ! -d ~/ansible/awx ]]
then
	git clone https://github.com/ansible/awx.git
fi

cd awx/installer

sudo ansible localhost-py3 -m ping
sudo ansible-playbook -i inventory install.yml

