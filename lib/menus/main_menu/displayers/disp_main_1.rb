class Display_main

  def self.disp_main_menu
    Animation.scraperforchris
    puts "Please choose an option:"
    puts "1. Search Menu"   
    puts "2. Exit"
    Cli.print_line
  end

  def self.print_greeting
    system "clear"
    Cli.print_line
    puts "Greetings Commander!"
    puts "Welcome to Chumboat's Amazing System Finder!"
    Cli.print_line
  end

end