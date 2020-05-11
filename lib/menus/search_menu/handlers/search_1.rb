class Search_1
  def self.take_search_location
    system "clear"
    puts "Please enter your Search System:"
    $search_location = gets.chomp
  end
end