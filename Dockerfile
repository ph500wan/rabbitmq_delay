FROM rabbitmq:3-management

RUN apt-get update
RUN apt-get install -y --no-install-recommends wget
RUN apt-get install -y --no-install-recommends unzip
RUN wget --no-check-certificate -P /plugins https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip
RUN unzip -d /plugins /plugins/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

