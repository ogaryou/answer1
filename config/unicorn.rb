app_path = File.expand_path('../../', __FILE__)

worker_processes 1

working_directory app_path

pid "#{app_path}/tmp/pids/unicorn.pid"

listen 8000

stderr_path "#{app_path}/log/unicorn.stderr.log"

stdout_path "#{app_path}/log/unicorn.stdout.log"

timeout 60

preload_app true
GC.respond_to?(:copy_on_write_friendly=) && GC.copy_on_write_friendly