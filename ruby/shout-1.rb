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

# Shout Module Mixin

module Shout
	def good_job(compliment)
		"You passed, " + compliment + "!!" + " :)"
	end

	def next_time(suggestion)
		"You did not pass, " + suggestion + "!!" + " :D"
	end
end

class TeacherPass
	include Shout
end

class TeacherFail
	include Shout
end

#Driver code

puts TeacherPass.new.good_job("A+ ...you did great")
puts TeacherFail.new.next_time("try studying chapter 2 a bit more")
puts TeacherPass.new.good_job("Looks like you understand the material")
puts TeacherFail.new.next_time("work on your vocabulary choice")