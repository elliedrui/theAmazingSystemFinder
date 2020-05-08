# we should greet the user then test to make sure the edsm api is responding by calling the method in the api class
# maybe get location for search center at this time
# there should be a selection list for the type of search we want to make, this will be limited for brevity
# should then return the requested values
# build the saving function for storing and give an option for new search or see saved. once fuicntionality == true add search fanciness

class Cli

  attr_accessor :name, :search_location, :system_search_parameter, :max_search_radius, :search_radius, :animation, :print_greeting

  

  def initialize
    @name=name
    @search_location=search_location    
    @system_search_parameter=system_search_parameter
    @max_search_radius=max_search_radius
  end


  def self.greet_commander
    Display_main.print_greeting
    
    Api.request_systems_from_edsm($search_location, $max_search_radius)
  end

  def self.main_menu
    Display_main.disp_main_menu
    input = gets.to_i
    case input
    when 1
      Display_search.disp_search_menu
      #mmm maybe this just sends to the search menu handler instead
    when 2

    when 3

    when 4

    else
      reject_input
      main_menu
    end

    def reject_input
      puts "I'm sorry, that is not a valid option, please select again."
    end

  end

  



 

  def take_menu_input
 
  end

    

end