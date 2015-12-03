FROM matthewfranglen/sensu-base

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY config.json /etc/sensu/config.json

RUN chown -R sensu:sensu /etc/sensu

CMD ["/usr/bin/supervisord"]
