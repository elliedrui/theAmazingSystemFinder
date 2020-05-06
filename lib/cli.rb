# we should greet the user then test to make sure the edsm api is responding by calling the method in the api class
# maybe get location for search center at this time
# there should be a selection list for the type of search we want to make, this will be limited for brevity
# should then return the requested values


class Cli

  attr_accessor :name, :system, :location

  

  def initialize
    @name=name
    @system=system
    @location=location
    
  end


  def GreetCommander
    puts "---------------------"
    puts "Greeting Commander!"
    puts "Please enter your location:"
    location = gets.chomp
    puts "---------------------"
  end





end
