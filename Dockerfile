# convenience gnuplot
FROM stackbrew/ubuntu:14.04
MAINTAINER Ivo Jimenez "ivo.jimenez@gmail.com"

# Make sure we are up-to-date
RUN apt-get update && apt-get install -y gnuplot

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/gnuplot"]
