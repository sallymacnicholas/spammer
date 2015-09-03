desc "This task is called by the Heroku scheduler add-on"
task :send_notification => :environment do
	#Friend.all.each do |friend| 
    #	SendNotification.new.text_message(friend.number)
	#end
	SendNotification.new.mass_notification
	puts "message sent"
end
