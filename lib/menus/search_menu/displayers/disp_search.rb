
class Display_search

  def self.disp_search_menu
    Animation.scraperforchris
    system "clear"
    puts "Please choose an option:"
    puts "1. Enter Search Center System"   
    puts "2. Enter Center of Search Radius (Max 20ly)"
    puts "3. View Search Parameters"
    puts "4. Clear Search Parameters"
    puts "5. View Saved Systems"
    puts "6. Clear Saved Systems"
    puts "7. View Search Results"
    puts "8. Main Menu"
    puts "9. Exit Program"
    Cli.print_line
  end

end
