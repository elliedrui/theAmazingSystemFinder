class Search_2
  def self.take_search_radius
    system "clear"
    puts "Please enter your Search Radius:"
    $search_radius = gets.chomp
  end
end