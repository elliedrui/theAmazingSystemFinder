

class Display_results

    attr_accessor :display_api_results

  def self.disp_results_menu
    system "clear"
    Cli.print_line
    #binding.pry
    if $json_parse  == nil
      Api.request_systems_from_edsm($search_location, $search_radius)
    end
    Api.display_api_results
    # Api.request_systems_from_edsm($search_location, $search_radius)
    Cli.print_line
    puts "What would you like to do?"
    puts "1. Save a System"
    puts "2. View Saved Systems"
    puts "3. Clear Saved Systems"
    puts "4. Return to Search Menu"
    puts "5. Return to Main Menu"
    puts "6. Exit Program!"
    Cli.print_line
  end




end

