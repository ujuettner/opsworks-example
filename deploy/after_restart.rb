node[:deploy].each do |application, deploy|
  if deploy[:application_type] == 'rails'
    process_name = "#{application}_sidekiq"
    Chef::Log.info("Restarting #{process_name} in after_restart")
    sudo "monit restart all -g #{process_name}"
  end
end
