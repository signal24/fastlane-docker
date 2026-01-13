FROM ruby:latest

WORKDIR /fastlane

# Remove the pre-installed Bundler 4.x and install a compatible version (< 3.0.0)
RUN rm -rf /usr/local/lib/ruby/gems/*/gems/bundler-* \
    && rm -f /usr/local/lib/ruby/gems/*/specifications/default/bundler-*.gemspec \
    && gem install bundler -v '~> 2.0'

COPY Gemfile .
RUN bundle install
