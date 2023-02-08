FROM ruby:3.1

COPY ./backend/Gemfile /rails/Gemfile
COPY ./backend/Gemfile.lock /rails/Gemfile.lock

WORKDIR /rails

RUN gem update --system
RUN bundle update --bundler
RUN bundle install
