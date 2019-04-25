FROM ruby:latest

LABEL vendor="Arnaud LEHERPEUR"
LABEL version="1.0.0"

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install imagemagick -y
RUN apt-get install apt-transport-https -y
RUN apt-get install build-essential libffi-dev libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev -y

RUN mkdir /app
WORKDIR /app
COPY . .

RUN gem install bundler
RUN bundle install