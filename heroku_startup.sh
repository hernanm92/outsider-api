#!/bin/bash

bundle exec rake db:migrate RAILS_ENV=development
bundle exec puma -C puma.rb