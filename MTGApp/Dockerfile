FROM ubuntu:16.04

FROM ruby:2.5.1
MAINTAINER tqlangsfeld@gmail.com

RUN apt-get update && apt-get install -y build-essential nodejs

RUN mkdir -p /MTGApp
WORKDIR /MTGApp

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

CMD ["bundle", "exec", "rails", "server", "-p", "3000", "-b", "0.0.0.0"]