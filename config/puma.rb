workers ENV.fetch('WEB_CONCURRENCY') { 2 }.to_i
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }.to_i
threads threads_count, threads_count

preload_app!

rackup DefaultRackup
port        ENV.fetch('PORT') { 3000 }
environment ENV.fetch('RACK_ENV') { "development" }

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
