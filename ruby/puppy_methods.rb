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
  	p years / 7 
  end

  def walk(distance)
  	puts "Remmy goes for a #{distance} mile walk"
  end



end




Remmy = Puppy.new

Remmy.fetch("ball")
Remmy.speak(4) 
Remmy.roll_over
Remmy.dog_years(35)
Remmy.walk("three")

