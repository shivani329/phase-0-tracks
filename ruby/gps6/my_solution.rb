# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#require relative means you can call a file that is within the same directory
#scope means it is global for the state data 
require_relative 'state_data'

class VirusPredictor
#initialize is the class for instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calling predicted_deaths and speed_of_spread methods and taking population_density
#population and state as perameters 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#taking in parameters population_density, population, and state runs through conditional
#statements, then prints the state and its outcome
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density

    when 149..199 then number_of_deaths = (@population * 0.4).floor
    when  99..149 then number_of_deaths = (@population * 0.3).floor
    when 49..99 then number_of_deaths = (@population * 0.2).floor
    when 0..49 then number_of_deaths = (@population * 0.1).floor
    when number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes in population density and state parameters and calculates how quickly the virus will
  #spread throughout the state's population,
  #then prints the outcome 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
    when 149..199 then speed += 0.5
    when 99..149 then speed += 1
    when 49..99 then speed += 1.5
    when 0..49 then speed += 2
    when speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects

end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#=======================================================================
# Reflection Section