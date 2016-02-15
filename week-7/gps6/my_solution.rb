# Virus Predictor

# I worked on this challenge [with: pietro ].
# We spent [2] hours on this challenge.

# added rough_draft.rd for the full file of the GPS. Added relavent data to here.

# EXPLANATION OF require_relative
# require_relative is for things in the same dir. You do not have to Define a file path. However you do need to define the file name.
#
# Hashing it out: It is a hash inside a hash. The first key is the state name and then the 2nd level is a string that has to sets of data in each hash key and data. This helps memory and run speed. if you use the rocket dec for the hash you can use Strings for the keys. However if you tie it back to a symbols it converts it to a symbols. If you use symbols it uses the same memory everytime and does not create 50 new places in memeory.
# You can access this data from anyplace. The data is not encapliated.


# require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# refractor Section

# pull in STATE_DATA constant for data reading later.
require_relative 'state_data'

class VirusPredictor

  #pulls in from
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @size = size()
    #formula for speed
    @speed = 2.5 - (@size.floor * 0.5)
    #formula for deaths
    @predicted_deaths = (@population * (@size / 10)).floor

  end

#set readers
attr_reader  :speed
attr_reader  :predicted_deaths

#Define the size of the population modifier for use later.
  #  def size
  #   mod_factor = 0.0
  #   if @population_density >= 200
  #     mod_factor = 4.0
  #   elsif @population_density >= 150
  #     mod_factor =  3.0
  #   elsif @population_density >= 100
  #     mod_factor =  2.0
  #   elsif @population_density >= 50
  #     mod_factor =  1.0
  #   else
  #     mod_factor =  0.5
  #   end
  #   return mod_factor
  # end

 def size

  @population_density/50

    mod_factor = 0.0
    if @population_density >= 200
      mod_factor = 4.0
    elsif @population_density >= 150
      mod_factor =  3.0
    elsif @population_density >= 100
      mod_factor =  2.0
    elsif @population_density >= 50
      mod_factor =  1.0
    else
      mod_factor =  0.5
    end
    return mod_factor
  end


end

# DRIVER CODE

# loop through each state and parse the data and write it out to the display.
STATE_DATA.each do |stateName, stateData|
  #declare virus for the class of each loop
  virus = VirusPredictor.new(stateName, stateData[:population_density], stateData[:population])
  #prints out the data in a reader findly way.
  print "#{stateName} will lose #{virus.predicted_deaths} people in this outbreak and will spread across the state in #{virus.speed} months.\n\n"

end

#=======================================================================
# Reflection Section