
#!/usr/bin/env puma

rackup 'config.ru'

environment 'development'

bind 'tcp://0.0.0.0:8080'

daemonize true

pidfile 'log/puma.pid'

state_path 'log/puma.state'

stdout_redirect 'log/stdout.log', 'log/stderr.log', true

threads 16, 64

workers 1

# preload_app!

prune_bundler