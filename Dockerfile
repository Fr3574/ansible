FROM ubuntu:kinetic
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y software-properties-common sudo curl git build-essential && \
    add-apt-repository --yes --update ppa:ansible/ansible && \ 
    apt -y install ansible

ARG TAGS
ARG USER
ARG PASSWORD
RUN groupadd --gid 1000 $USER \
    && useradd --uid 1000 --gid $USER --shell /bin/bash --create-home -p "$(openssl passwd -1 $PASSWORD)" $USER \
    && usermod -a -G sudo $USER
USER $USER
WORKDIR /home/$USER
ENV USER=$USER

COPY . .
CMD ["sh", "-c", "ansible-playbook -t $TAGS local.yml"]
