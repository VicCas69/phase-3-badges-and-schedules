# Write your code here.
require 'pry'

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator names
    names.map{|name| badge_maker(name)}
end

def assign_rooms speakers
    room = 1
    room_list = []
        speakers.each do |speaker| 
            #while room <= speakers.size
            room_list << "Hello, #{speaker}! You'll be assigned to room #{room}!"
            room+=1
        #end
    end
    room_list
end
#binding.pry
def printer names
   batch_badge_creator(names).each{|name| puts name}
   assign_rooms(names).each{|room| puts room}
end
#binding.pry