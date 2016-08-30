def color
	color1 = "red"
	color2 = "blue"
	color3 = "green"
	puts "What are your favorite colors?"
	yield(color1, color2, color3)
end

color { |color1, color2, color3| puts "My favorite colors are #{color1}, #{color2}, and #{color3}." }
