class Display_main

  def self.disp_main_menu
    Animation.loading_anim
    puts "Please choose an option:"
    puts "1. Search Menu"   
    puts "2. Exit"
    print_line
  end


  def self.print_greeting
    system "clear"
    print_line
    puts "Greetings Commander!"
    puts "Welcome to Chumboat's Amazing System Finder!"
    print_line
  end

  def self.print_line
    puts "---------------------"
  end



end