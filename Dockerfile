FROM docker:latest

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]