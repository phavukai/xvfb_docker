FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    xvfb \
    && rm -rf /var/lib/apt/lists/*

ENV DISPLAY=0
ENV SCREEN=0
ENV DISPLAY_MODE=1024x768x16

EXPOSE 6000:6000

COPY xvfb.sh /usr/local/bin/
RUN chmod ug+x /usr/local/bin/xvfb.sh
ENTRYPOINT ["/usr/local/bin/xvfb.sh"]
