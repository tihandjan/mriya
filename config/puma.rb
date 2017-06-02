  app = "fcmriya" # App-specific

  workers  5
  threads  1, 1 # relying on many workers for thread-unsafe apps

  rackup      DefaultRackup
  port        11592
  environment ENV['RACK_ENV'] || 'production'
  daemonize   true

  pidfile "/home/deployer/apps/fcmriya/shared/tmp/pids/puma.pid"
#   stdout_redirect "#{root}/puma/puma.log", "#{root}/puma/puma_error.log"
  bind "unix:///home/deployer/apps/fcmriya/shared/tmp/sockets/fcmriya-puma.sock"