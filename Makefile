ping:
	ansible all -i inventory.ini -u ${u} -m ping

all:
	ansible-playbook playbook.yml -i inventory.ini -u ${u}

install:
	ansible-playbook playbook.yml -i inventory.ini -t install -u ${u}

nginx-proxy: 
	ansible-playbook playbook.yml -i inventory.ini -t nginx -u ${u}

nginx-update-conf:
	ansible-playbook playbook.yml -i inventory.ini -u ${u} -t nginx --skip-tags install

users:
	ansible-playbook playbook.yml -i inventory.ini -t users -u ${u}

ssh:
	ansible-playbook playbook.yml -i inventory.ini -t ssh -u ${u}

ubuntu:
	ansible-playbook playbook.yml -i inventory.ini -t ubuntu -u ${u}

cowsay:
	ansible-playbook playbook.yml -i inventory.ini -t cowsay -u ${u}

cowsay-nginx-conf:
	ansible-playbook playbook.yml -i inventory.ini -t cowsay -t nginx -u ${u}

install-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini -t deploy-app -u ${u}
