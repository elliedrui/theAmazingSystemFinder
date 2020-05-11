class Search_3

  def self.view_params
    puts "Current Paramaters are:"
    Cli.print_line
    puts "System: #{$search_location.capitalize}"
    puts "Radius: #{$search_radius}"
  end
  
end