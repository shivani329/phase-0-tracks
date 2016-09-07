#Worked with Travis Buckley on this pairing assignment


class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end


  def speak(woof) 
  	woof.times do
		puts "Woof!"  		
  	end
  end

  def roll_over
  	puts "Roll over"
  end

  def dog_years(years)
  	dog_age = years / 7 
    puts "You are #{dog_age} years old"
  end

  def walk(distance)
  	puts "Remmy goes for a #{distance} mile walk"
  end

  def initialize 
  	p "Initializing new puppy instance..."
  end 
  #initialize method ran at the beginning of the program without calling it in my driver code

end




Remmy = Puppy.new

Remmy.fetch("ball")
Remmy.speak(4) 
Remmy.roll_over
Remmy.dog_years(35)
Remmy.walk(3)



class Basketball

	def initialize 
		puts "Initializing basketball blabber..."
	end

	def score(player, number)
		puts "#{player} shoots for #{number}, and he scores!"
	end

	def cheer(number)
		number.times {puts "DE-FENSE!!"}
	end

end





basketball_array = []

50.times do |count|
	basketball_array << Basketball.new
end

basketball_array.each do |ball|
	ball.cheer(5)
	ball.score("Jimmy Butler", "3")
end






