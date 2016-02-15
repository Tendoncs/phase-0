# # # Virus Predictor

# # # I worked on this challenge [by myself, with: pietro ].
# # # We spent [#] hours on this challenge.

# # # EXPLANATION OF require_relative
# # #
# # #
# # require_relative 'state_data'

# # class VirusPredictor

# #   def initialize(state_of_origin, population_density, population)
# #     @state = state_of_origin
# #     @population = population
# #     @population_density = population_density
# #   end

# #   def virus_effects
# #     predicted_deaths(@population_density, @population, @state)
# #     speed_of_spread(@population_density, @state)
# #   end

# #   private

# #   def predicted_deaths(population_density, population, state)
# #     # predicted deaths is solely based on population density
# #     if @population_density >= 200
# #       number_of_deaths = (@population * 0.4).floor
# #     elsif @population_density >= 150
# #       number_of_deaths = (@population * 0.3).floor
# #     elsif @population_density >= 100
# #       number_of_deaths = (@population * 0.2).floor
# #     elsif @population_density >= 50
# #       number_of_deaths = (@population * 0.1).floor
# #     else
# #       number_of_deaths = (@population * 0.05).floor
# #     end

# #     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

# #   end

# #   def speed_of_spread(population_density, state) #in months
# #     # We are still perfecting our formula here. The speed is also affected
# #     # by additional factors we haven't added into this functionality.
# #     speed = 0.0

# #     if @population_density >= 200
# #       speed += 0.5
# #     elsif @population_density >= 150
# #       speed += 1
# #     elsif @population_density >= 100
# #       speed += 1.5
# #     elsif @population_density >= 50
# #       speed += 2
# #     else
# #       speed += 2.5
# #     end

# #     puts " and will spread across the state in #{speed} months.\n\n"

# #   end

# # end

# # #=======================================================================

# # # DRIVER CODE
# #  # initialize VirusPredictor for each state


# # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# # alabama.virus_effects

# # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# # jersey.virus_effects

# # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# # california.virus_effects

# # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# # alaska.virus_effects


# # #=======================================================================
# # # Reflection Section





# class VirusPredictor
# # Pulling in three pieces of data for each object and assigning it to variable names that will be utilized in subsequent methods.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private #start private
# # For each level of population density, the number of deaths will be calculated in accordance with the population of the state and a decimal. The result is then rounded to the nearest integer.
#   def size
#     mod_factor = 0.0

#     if @population_density >= 200
#       mod_factor = 4.0
#     elsif @population_density >= 150
#       mod_factor =  3.0
#     elsif @population_density >= 100
#       mod_factor =  2.0
#     elsif @population_density >= 50
#       mod_factor =  1.0
#     else
#       mod_factor =  0.5
#     end
#     return mod_factor
#   end

#   def predicted_deaths
#     # predicted deaths is solely based on population density

#     # @population_density/50 * 0.4

#     # call size/ 10 * population

#     number_of_deaths = (@population * (size() / 10)).floor
# #     if @population_density >= 200
# #       number_of_deaths = (@population * 0.4).floor
# #     elsif @population_density >= 150
# #       number_of_deaths = (@population * 0.3).floor
# #     elsif @population_density >= 100
# #       number_of_deaths = (@population * 0.2).floor
# #     elsif @population_density >= 50
# #       number_of_deaths = (@population * 0.1).floor
# #     else
# #       number_of_deaths = (@population * 0.05).floor
# #     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
# # The satisfaction of each level of the conditional statement increments initially stated variable 'speed' by a certain level.
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5 #months
#     elsif @population_density >= 150
#       speed += 1 #months
#     elsif @population_density >= 100
#       speed += 1.5 #months
#     elsif @population_density >= 50
#       speed += 2 #months
#     else
#       speed += 2.5 #months
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

#   # This is the end of private because it is the end of the class

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state

# # psudocode
# # pull list of keys from hash
# # put them into array
# # or foreach key loop

# #sample code
# # loop foreach
# #   {
# # state = VirusPredictor.new("statename", STATE_DATA["statename"][:population_density], STATE_DATA["statename"][:population])
# # alabama.virus_effects
# #     }


# #   hash.map! => # Will return the destroy the array.
# #   hash.map # non distructive.

# #   hash.each # dont care about array comming.
#   # hash.each do |key, array|
#   # puts "#{key}-----"
#   # puts array
#   # end

#   # "Alabama" => {population_density: 94.65, population: 4822023},

# STATE_DATA.each do |stateName, stateData|
#     virus = VirusPredictor.new(stateName, stateData[:population_density], stateData[:population])
#     puts virus.virus_effects
# end


# # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# # alabama.virus_effects

# # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# # jersey.virus_effects

# # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# # california.virus_effects

# # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# # alaska.virus_effects


# #=======================================================================
# # Reflection Section



#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# STATE_DATA = {
#   "Alabama" => {population_density: 94.65, population: 4822023},
#   "Alaska" => {population_density: 1.1111, population: 731449},
#   "Arizona" => {population_density: 57.05, population: 6553255},
#   "Arkansas" => {population_density: 56.43, population: 2949131},
#   "California" => {population_density: 244.2, population: 38041430},
#   "Colorado" => {population_density: 49.33, population: 5187582},
#   "Connecticut" => {population_density: 741.4, population: 3590347},
#   "Delaware" => {population_density: 470.7, population: 917092},
#   "Florida" => {population_density: 360.2, population: 19317568},
#   "Georgia" => {population_density: 172.5, population: 9919945},
#   "Hawaii" => {population_density: 216.8, population: 1392313},
#   "Idaho" => {population_density: 19.15, population: 1595728},
#   "Illinois" => {population_density: 231.9, population: 12875255},
#   "Indiana" => {population_density: 182.5, population: 6537334},
#   "Iowa" => {population_density: 54.81, population: 3074186},
#   "Kansas" => {population_density: 35.09, population: 2885905},
#   "Kentucky" => {population_density: 110.0, population: 4380415},
#   "Louisiana" => {population_density: 105.0, population: 4601893},
#   "Maine" => {population_density: 43.04, population: 1329192},
#   "Maryland" => {population_density: 606.2, population: 5884563},
#   "Massachusetts" => {population_density: 852.1, population: 6646144},
#   "Michigan" => {population_density: 174.8, population: 9883360},
#   "Minnesota" => {population_density: 67.14, population: 5379139},
#   "Mississippi" => {population_density: 63.50, population: 2984926},
#   "Missouri" => {population_density: 87.26, population: 6021988},
#   "Montana" => {population_density: 6.86, population: 1005141},
#   "Nebraska" => {population_density: 23.97, population: 1855525},
#   "Nevada" => {population_density: 24.8, population: 2758931},
#   "New Hampshire" => {population_density: 147.0, population: 1320718},
#   "New Jersey" => {population_density: 1205, population: 8864590},
#   "New Mexico" => {population_density: 17.16, population: 2085538},
#   "New York" => {population_density: 415.3, population: 19570261},
#   "North Carolina" => {population_density: 200.6, population: 9752073},
#   "North Dakota" => {population_density: 9.92, population: 699628},
#   "Ohio" => {population_density: 282.5, population: 11544225},
#   "Oklahoma" => {population_density: 55.22, population: 3814820},
#   "Oregon" => {population_density: 40.33, population: 3899353},
#   "Pennsylvania" => {population_density: 285.3, population: 12763536},
#   "Rhode Island" => {population_density: 1016, population: 1050292},
#   "South Carolina" => {population_density: 157.1, population: 4723723},
#   "South Dakota" => {population_density: 10.86, population: 833354},
#   "Tennessee" => {population_density: 156.6, population: 6456243},
#   "Texas" => {population_density: 98.07, population: 26059203},
#   "Utah" => {population_density: 34.3, population: 2855287},
#   "Vermont" => {population_density: 67.73, population: 626011},
#   "Virginia" => {population_density: 207.3, population: 8185867},
#   "Washington" => {population_density: 102.6, population: 6724540},
#   "Washington,D.C."=> {population_density: 10357, population: 632323},
#   "West Virginia" => {population_density: 77.06, population: 1855413},
#   "Wisconsin" => {population_density: 105.2, population: 5726398},
#   "Wyoming" => {population_density: 5.851, population: 576412}
# }


# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is for things in the same dir. You do not have to Define a file path. However you do need to define the file name.
#
# Hashing it out: It is a hash inside a hash. The first key is the state name and then the 2nd level is a string that has to sets of data in each hash key and data. This helps memory and run speed. if you use the rocket dec for the hash you can use Strings for the keys. However if you tie it back to a symbols it converts it to a symbols. If you use symbols it uses the same memory everytime and does not create 50 new places in memeory.
# You can access this data from anyplace. The data is not encapliated.




# class VirusPredictor
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private

#   def size
#     mod_factor = 0.0

#     if @population_density >= 200
#       mod_factor = 4.0
#     elsif @population_density >= 150
#       mod_factor =  3.0
#     elsif @population_density >= 100
#       mod_factor =  2.0
#     elsif @population_density >= 50
#       mod_factor =  1.0
#     else
#       mod_factor =  0.5
#     end
#     return mod_factor
#   end

#   def predicted_deaths
#     number_of_deaths = (@population * (size() / 10)).floor

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread

#     # speed = 2.5
#     # loopcount = size().floor
#     speed = 2.5 - (size().floor * .5)

#     # loopcount.times do
#     #   speed -= 0.5
#     # end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# STATE_DATA.each do |stateName, stateData|
#     virus = VirusPredictor.new(stateName, stateData[:population_density], stateData[:population])
#     puts virus.virus_effects

# end


#=======================================================================
# Reflection Section

require_relative 'state_data'

class VirusPredictor

  #pulls in from
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @size = size()
    @speed_final = 2.5 - (@size.floor * 0.5)
    @predicted_deaths_final = (@population * (@size / 10)).floor

  end

attr_reader  :speed_final
attr_reader  :predicted_deaths_final

   def size
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

STATE_DATA.each do |stateName, stateData|
  virus = VirusPredictor.new(stateName, stateData[:population_density], stateData[:population])
  print "#{stateName} will lose #{virus.predicted_deaths_final} people in this outbreak and will spread across the state in #{virus.speed_final} months.\n\n"

end