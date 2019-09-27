class MegaGreeter
	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list -- iterate
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	# Change @names to one name
	mg.names = "Rekkers"
	mg.say_hi
	mg.say_bye

	# Change @names to array of names
	mg.names = ["Sam, Rekkers, Kayla, Drew, Andrew, Melanie"]
	mg.say_hi
	mg.say_bye

	# Change @names to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
end