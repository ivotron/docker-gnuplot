FROM debian:buster-slim

RUN apt update && \
    apt install -y gnuplot && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["gnuplot"]
