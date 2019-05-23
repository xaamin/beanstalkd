FROM xaamin/ubuntu:18.04
MAINTAINER Benjamín Martínez Mateos <xaamin@outlook.com>

# Install requeriments
RUN apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y beanstalkd \
    # Remove temp files
    && apt-get clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose SSH
EXPOSE 11300

ADD /root/scripts /root/scripts

# Define default command.
CMD ["/bin/bash", "/root/scripts/start-beanstalkd.sh"]