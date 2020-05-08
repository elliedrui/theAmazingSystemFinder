class Display_main

  def self.disp_main_menu
    Animation.loading_anim
    puts "Please choose an option:"
    puts "1. Search Menu"   
    puts "2. View Saved Systems"
    puts "3. Clear Saved Systems"
    puts "4. Exit"
    puts "5. placeholder"
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