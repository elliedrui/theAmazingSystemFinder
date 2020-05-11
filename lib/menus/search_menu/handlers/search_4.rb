class Search_4

  def self.clear_params
    $search_radius = 0
    $search_location = ""
    system "clear"
    puts "Search Parameters cleared!"
    Cli.wait_for_enter
  end
  
end