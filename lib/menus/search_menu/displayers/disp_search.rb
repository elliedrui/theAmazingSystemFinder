
class Display_search



  def self.disp_search_menu
    system "clear"
    puts "Please choose an option:"
    puts "1. Enter Search Center System"   
    puts "2. Enter Center of Search Radius (Max 20ly)"
    puts "3. Clear Search Parameters"
    puts "4. Main Menu"
    puts "5. Exit Program"
    print_line
  end

  def self.print_line
    puts "---------------------"
  end
  
end
