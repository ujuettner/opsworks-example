node[:deploy].each do |application, deploy|
  sudo "monit restart all -g #{application}_sidekiq"
end
