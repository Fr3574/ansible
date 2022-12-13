# ansible
[Ansible](https://github.com/ansible/ansible) is an IT-automation system. I use it to setup my own development environment. Inspired by [ThePrimeagen/ansible](https://github.com/ThePrimeagen/ansible).

## Install ansible
```
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y curl git software-properties-common ansible
```

## Pull ansible (& execute ansible)
```
sudo ansible-pull -U https://github.com/Fr3574/ansible.git
```