require 'pry'
class SendNotification
  def initialize
    @client = Twilio::REST::Client.new(ENV["twilio_sid"], ENV["twilio_token"])
  end

  def text_message(number)
    @client.messages.create from: '7205063550', to: number, body: message
  end

  def message
    # lots_of_messages[rand(0..(lots_of_messages.length))]
    "1507 i mean"
  end

  def lots_of_messages
    [
      "hey there, thanks for playing along",
      "do you like justin bieber? i sure do",
      "i'm almost done with school, are you?",
      "we have yoga on mondays at 745, you will smell bad after",
      "this was my very last lightning talk. hallelujah!",
      "vault tonight. 4:10pm sharp",
      "horace is a hipster",
      "jorge is mexican",
      "i need a job, can you help me?", 
      "you should always wear a helmet while biking",
      "wanna do some pushups during next pomo?",
      "please buy me some coffee",
      "please make more coffee",
      "be nice to everyone. kharma's a bitch"
    ]
  end

  def mass_notification
    Friend.all.each do |user|
      self.text_message(user.number)
    end
  end
end
