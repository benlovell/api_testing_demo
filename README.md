```
bundle install
bundle exec rake db:create db:migrate
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rspec
```
