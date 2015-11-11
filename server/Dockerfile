FROM ubuntu

# Install RabbitMQ
# See https://sensuapp.org/docs/0.20/install-rabbitmq

# Install erlang
RUN wget --output-document=/tmp/erlang-solutions_1.0_all.deb                 \
        http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    dpkg --install /tmp/erlang-solutions_1.0_all.deb                      && \
    rm /tmp/erlang-solutions_1.0_all.deb                                  && \
    apt-get update                                                        && \
    apt-get -y install erlang

# Install rabbit mq
RUN wget --output-document=/tmp/rabbitmq-signing-key-public.asc    \
        http://www.rabbitmq.com/rabbitmq-signing-key-public.asc && \
    apt-key add /tmp/rabbitmq-signing-key-public.asc            && \
    rm /tmp/rabbitmq-signing-key-public.asc                     && \
    echo "deb     http://www.rabbitmq.com/debian/ testing main"    \
        > /etc/apt/sources.list.d/rabbitmq.list                 && \
    apt-get update                                              && \
    apt-get -y install rabbitmq-server

# Run on startup
RUN update-rc.d rabbitmq-server defaults

# Add vhost
RUN rabbitmqctl add_vhost /sensu

# Add user
rabbitmqctl add_user sensu secret
rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"
