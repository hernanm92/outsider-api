#!/bin/bash

export RAILS_ENV=development
export RUBY_ENV=development
export RACK_ENV=development

bundle exec rake db:migrate RAILS_ENV=development
bundle exec puma -C puma.rb