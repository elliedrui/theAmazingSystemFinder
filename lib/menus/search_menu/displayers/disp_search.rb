
class Display_search



  def self.disp_search_menu
    Animation.loading_anim
    system "clear"
    puts "Please choose an option:"
    puts "1. Enter Search Center System"   
    puts "2. Enter Center of Search Radius (Max 20ly)"
    puts "3. View Saved Systems"
    puts "4. Clear Saved Systems"
    puts "5. Clear Search Parameters"
    puts "6. View Search Results"
    puts "7. Main Menu"
    puts "8. Exit Program"
    print_line
  end

  def self.print_line
    puts "---------------------"
  end

end
