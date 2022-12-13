FROM ubuntu:kinetic
ARG TAGS
WORKDIR /usr/local/bin
RUN apt update && \
    apt install -y software-properties-common sudo && \
    add-apt-repository --yes --update ppa:ansible/ansible && \ 
    apt -y install ansible
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
