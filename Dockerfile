FROM arne/erlang

USER root
RUN curl https://packagecloud.io/install/repositories/basho/riak/script.deb | bash
RUN apt-get install riak

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
