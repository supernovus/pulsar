FROM supernovus:rakudo-pulsar

COPY helloworld.pl6 /usr/bin/
COPY main.tt /usr/share/helloworld/

RUN zef install Web::App::Ballet

CMD ["/usr/bin/helloworld.pl6"]
