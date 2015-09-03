desc "This task is called by the Heroku scheduler add-on"
task :send_notification => :environment do
	SendNotification.new.mass_notification
	puts "message sent"
end
