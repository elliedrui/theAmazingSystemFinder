# we should greet the user then test to make sure the edsm api is responding by calling the method in the api class
# maybe get location for search center at this time
# there should be a selection list for the type of search we want to make, this will be limited for brevity
# should then return the requested values
# build the saving function for storing and give an option for new search or see saved. once fuicntionality == true add search fanciness

class Cli

  attr_accessor :name, :search_location, :system_search_parameter, :max_search_radius, :search_radius

  

  def initialize
    @name=name
    # @system=system
    @search_location=search_location    
    @system_search_parameter=system_search_parameter
    @max_search_radius=max_search_radius
  end


  def self.GreetCommander
    system "clear"
    puts "---------------------"
    puts "Greetings Commander!"
    puts "Please enter your search center:"
    $search_location = gets.chomp
    puts "---------------------"
    puts "Please enter max search radius:"
      $max_search_radius = gets.to_i 
      if $max_search_radius == 0
        puts "We need an integer greater than zero, Commander"
        $max_search_radius = gets.to_i
      end
    #binding.pry
    puts "---------------------"
    self.scraperforchris
    Api.request_systems_from_edsm($search_location, $max_search_radius)
  end

  def self.scraperforchris
    system "clear"
    20.times do
      puts "scraping..........\\"
      sleep(0.03)
      system "clear"
      puts "scraping..........\\"
      sleep(0.03)
      system "clear"
      puts "scraping..........|"
      sleep(0.03)
      system "clear"
      puts "scraping........../"
      sleep(0.03)
      system "clear"
      puts "scraping..........-"
      sleep(0.03)
      system "clear"
    end
    
  end

end