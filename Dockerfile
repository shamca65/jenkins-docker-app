FROM ruby:2.3.4
ENV LANG C.UTF-8

RUN apt-get update && \
apt-get install -y \
nodejs \
vim \
mysql-client --no-install-recommends && \
rm -rf /var/lib/apt/lists/*


ENV APP_ROOT /app


RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

COPY . $APP_ROOT

RUN gem install bundler
RUN bundle install

EXPOSE 3000
#
CMD bin/rails s -b 0.0.0.0 
