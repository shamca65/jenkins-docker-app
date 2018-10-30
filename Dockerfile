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

ENV BUNDLE_PATH /gems

COPY . $APP_ROOT

EXPOSE  3000
#CMD ./startup.sh
#CMD ["rails", "server", "-b", "0.0.0.0"]
