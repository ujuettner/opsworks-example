Chef::Log.info('Restarting sidekiq in after_restart')

node[:deploy].each do |application, deploy|
  sudo "monit restart all -g #{application}_sidekiq"
end
