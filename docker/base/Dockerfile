FROM ubuntu

RUN apt-get update
RUN apt-get install --yes supervisor wget
RUN mkdir -p /var/run/sshd /var/log/supervisor

RUN wget --quiet --output-document=- http://repositories.sensuapp.org/apt/pubkey.gpg | apt-key add -
RUN echo "deb http://repositories.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list

RUN apt-get update
RUN apt-get install --yes sensu

RUN mkdir -p /etc/sensu /etc/sensu/conf.d /etc/sensu/plugins
RUN chown -R sensu:sensu /etc/sensu
