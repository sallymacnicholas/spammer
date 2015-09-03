def initialize
  generate_friends
end

def generate_friends
  sample_friends.each do |friend|
    @friend = Friend.new(name: friend[:name], number: friend[:number])
    @friend.save
  end
end

def sample_friends
  [ { name: "sally", number: "7209364687"},
    { name: "drew", number: "7202803974"}
  ]
end
