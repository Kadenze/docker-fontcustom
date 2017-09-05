FROM ubuntu:16.04

#
# PACKAGES
#
ENV FONTCUSOM_VERSION 1.3.8
COPY lib/woff-code-latest.zip /rubyapp/woff-code-latest.zip
COPY docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN apt-get update && \
    apt-get -y install ruby ruby-dev fontforge python wget build-essential zlib1g-dev unzip && \
    unzip /rubyapp/woff-code-latest.zip -d /rubyapp/sfnt2woff && \
    cd /rubyapp/sfnt2woff && make && mv sfnt2woff /usr/local/bin/ && \
    gem install --no-document fontcustom -v "${FONTCUSOM_VERSION}" && \
    mkdir -p /rubyapp/fonts/ && \
    chmod u+rx,g+rx,o+rx,a-w /opt/docker-entrypoint.sh

#
# RUN
#
WORKDIR /rubyapp/fonts/
ENTRYPOINT ["/opt/docker-entrypoint.sh"]
CMD ["fontcustom", "help"]
