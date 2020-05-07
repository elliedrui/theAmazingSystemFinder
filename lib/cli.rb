# we should greet the user then test to make sure the edsm api is responding by calling the method in the api class
# maybe get location for search center at this time
# there should be a selection list for the type of search we want to make, this will be limited for brevity
# should then return the requested values


class Cli

  attr_accessor :name, :system, :search_location, :system_search_parameter

  

  def initialize
    @name=name
    @system=system
    @search_location=search_location    
    @system_search_parameter=system_search_parameter
  end


  def self.GreetCommander
    puts "---------------------"
    puts "Greeting Commander!"
    puts "Please enter your search center:"
    search_location = gets.chomp
    puts "---------------------"
  end





end
