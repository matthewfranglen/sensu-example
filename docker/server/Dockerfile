FROM matthewfranglen/sensu-base

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY config.json /etc/sensu/config.json
COPY default_handler.json /etc/sensu/conf.d/default_handler.json
COPY check_memory.json /etc/sensu/conf.d/check_memory.json

RUN chown -R sensu:sensu /etc/sensu

CMD ["/usr/bin/supervisord"]
