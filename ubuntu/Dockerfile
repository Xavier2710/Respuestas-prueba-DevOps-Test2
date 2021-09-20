FROM ubuntu:latest
#RUN apt-get update && apt-get install -qqy --no-install-recommends cron
RUN apt-get update
#debian:buster-slim
COPY script.sh /ubuntu/
#COPY crontab /etc/cron.d/crontab
#RUN chmod +x /etc/cron.d/crontab
#RUN crontab /etc/cron.d/crontab
COPY crontab /etc/crontab
WORKDIR /ubuntu/
RUN chmod +x script.sh
ENTRYPOINT ["tail", "-f", "/dev/null"]
#CMD ["cron", "-f"]
