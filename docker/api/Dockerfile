FROM ubuntu

# This installs the sensu server and api

RUN apt-get update && \
    apt-get install --yes openssh-server apache2 supervisor wget
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN wget --quiet --output-document=- http://repositories.sensuapp.org/apt/pubkey.gpg | \
        apt-key add -
RUN echo "deb     http://repositories.sensuapp.org/apt sensu main" > \
        /etc/apt/sources.list.d/sensu.list

RUN apt-get update
RUN apt-get install --yes sensu

RUN mkdir -p /etc/sensu
COPY config.json /etc/sensu/config.json

RUN chown -R sensu:sensu /etc/sensu

CMD ["/usr/bin/supervisord"]
