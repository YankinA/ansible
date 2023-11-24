ping:
	ansible all -i inventory.ini -u ${user} -m ping

install:
	ansible-playbook playbook.yml -i inventory.ini -t install -u ${user}
