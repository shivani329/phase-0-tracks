# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end

# end


# puts Shout.yell_angrily("I'm angry")
# puts Shout.yelling_happily("I'm so happy")

#Shout Module Mixin

module Shout
	def yell_angrily(words)
		words + "!!!" + " D:"
	end

	def yell_happily(words)
		"OH YEAH, " + words + "!!!" + " :D"
	end
end

class BullsFan
	include Shout
end

class CavsFan
	include Shout
end

