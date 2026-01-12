FROM ruby:latest

WORKDIR /fastlane

# Install a Bundler version compatible with fastlane (requires bundler < 3.0.0)
RUN gem install bundler -v '~> 2.0'

COPY Gemfile .
RUN bundle install
