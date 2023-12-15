ping:
	ansible all -i inventory.ini -u ${user} -m ping

install:
	ansible-playbook playbook.yml -i inventory.ini -t install -u ${user}

nginx-proxy: 
	ansible-playbook playbook.yml -i inventory.ini -t nginx -u ${user}

nginx-update-conf:
	ansible-playbook playbook.yml -i inventory.ini -u ${user} -t nginx --skip-tags install

users:
	ansible-playbook playbook.yml -i inventory.ini -t users -u ${user}

ubuntu:
	ansible-playbook playbook.yml -i inventory.ini -t ubuntu -u ${user}
