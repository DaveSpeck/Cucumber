# This is where we'll write the code of our Shouty app

class Person
	attr_accessor :location, :last_heard_message

	def initialize(shoutbox)
		@shoutbox = shoutbox
		shoutbox.add_person(self)
		@location = 0
	end

	def shout(message)
		@shoutbox.deliver(message, self)
	end

	def hear(message)
		@last_heard_message = message
	end
end

class Shoutbox
	def initialize
		@people =[]
	end

	def add_person(person)
		@people.push(person)
	end

	def deliver(message, shouter)
		@people.each do |person|
			if person != shouter
				distance = person.location - shouter.location
				if(distance <= 1000)
					person.hear(message)
				end
			end
		end
	end
end
