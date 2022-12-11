FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3200

CMD ["rails", "server", "-b", "0.0.0.0"]