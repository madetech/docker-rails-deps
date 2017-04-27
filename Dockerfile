FROM ruby:2.4.1-alpine

RUN apk update && apk upgrade
RUN apk add g++ make mysql-dev postgresql-dev imagemagick imagemagick-dev libffi-dev nodejs mysql-client
RUN npm install -g phantomjs-prebuilt

RUN gem install bundler rubygems-bundler --no-rdoc --no-ri
RUN gem regenerate_binstubs
