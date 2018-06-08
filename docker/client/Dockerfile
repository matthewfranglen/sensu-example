FROM matthewfranglen/sensu-base

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY config.json /etc/sensu/config.json
COPY check-memory.sh /etc/sensu/plugins/check-memory.sh

ARG ID
COPY client.json /etc/sensu/conf.d/client.json
RUN sed -i -e "s/\${ID}/${ID}/" /etc/sensu/conf.d/client.json

RUN chown -R sensu:sensu /etc/sensu

CMD ["/usr/bin/supervisord"]
