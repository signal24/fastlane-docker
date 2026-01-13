FROM ruby:3

WORKDIR /fastlane

COPY Gemfile .
RUN bundle install
