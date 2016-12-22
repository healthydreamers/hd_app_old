FROM ruby:2.3.1
MAINTAINER Ismail Mechbal <ismail@werunik.com>

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs

# fucking debian installs `node` as `nodejs`
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

ENV APP_HOME /webapps/hd_app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD ./Gemfile* $APP_HOME/
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN bundle install

COPY . $APP_HOME/