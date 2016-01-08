#!/bin/bash

export RAILS_ENV=production
export RUBY_ENV=production
export RACK_ENV=production

bundle exec rake db:migrate RAILS_ENV=production
bundle exec puma