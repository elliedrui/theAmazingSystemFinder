# we should greet the user then test to make sure the edsm api is responding by calling the method in the api class
# maybe get location for search center at this time
# there should be a selection list for the type of search we want to make, this will be limited for brevity
# should then return the requested values
# build the saving function for storing and give an option for new search or see saved. once fuicntionality == true add search fanciness

class Cli

  attr_accessor :name, :search_location, :search_radius, :animation, :print_greeting, :disp_search_menu, :results_menu, :add_system_to_array#, :json_parse

  

  def initialize
    @name=name
    @search_location=search_location    
    # @system_search_parameter=system_search_parameter
    @search_radius=search_radius
  end


  def self.greet_commander
    Display_main.print_greeting
  end

  def self.main_menu
    Display_main.disp_main_menu
    input = gets.to_i
    case input
    when 1
      search_menu
    when 2
      exit_method
    else
      reject_input
      main_menu
    end
  end

  def self.search_menu
    Display_search.disp_search_menu
    input = gets.to_i
    case input
    when 1
      take_search_location
    when 2
      take_search_radius
    when 3
      view_params
      wait_for_enter
      search_menu
    when 4
      clear_params
      search_menu
    when 5
      view_systems
      search_menu
    when 6
      clear_systems
      search_menu
    when 7
      results_menu
    when 8
      main_menu
    when 9
      exit_method
    else
      reject_input
      search_menu
    end
  end

  def self.results_menu
    Display_results.disp_results_menu
    input = gets.to_i
    case input
    when 1
      add_system_to_array
      results_menu
    when 2
      view_systems
      results_menu
    when 3
      clear_systems
      results_menu
    when 4
      search_menu
    when 5
      main_menu
    when 6
      exit_method
    else
      reject_input
      results_menu
    end
  end
  
  def self.exit_method
    system "clear"
    puts "Have a great day!"
    sleep(1)
    Animation.exit_anim
    system "clear"
  end


  def self.take_search_location
    system "clear"
    puts "Please enter your Search System:"
    $search_location = gets.chomp
    search_menu
  end

  def self.take_search_radius
    system "clear"
    puts "Please enter your Search Radius:"
    $search_radius = gets.chomp
    search_menu
  end

    def self.clear_params
      $search_radius = 0
      $search_location = ""
      system "clear"
      puts "Search Parameters cleared!"
      wait_for_enter
    end

    def self.view_params
      puts "Current Paramaters are"
      puts "System: #{$search_location.capitalize}"
      puts "Radius: #{$search_radius}"
    end


    def self.wait_for_enter
      print "press enter to continue"                                                                                                    
      STDIN.getc 
    end

    def self.reject_input
      puts "I'm sorry, that is not a valid option, please select again."
      wait_for_enter
    end

    def self.print_line
      puts "---------------------"
    end

   def self.view_systems
    Systems.all
    wait_for_enter
   end

  def self.clear_systems
    Systems.clear_all
  end

def self.add_system_to_array
  puts "Select the system number:"
  selection_input = gets.to_i
  Systems.add_system(selection_input)
end



end