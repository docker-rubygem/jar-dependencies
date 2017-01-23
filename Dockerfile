FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.9

RUN gem install jar-dependencies --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["lock_jars"]
CMD ["--help"]
