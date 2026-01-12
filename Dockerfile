FROM ruby:latest

WORKDIR /fastlane

COPY Gemfile .
RUN bundle install
