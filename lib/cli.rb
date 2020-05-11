

class Cli

  def self.first_run
    Animation.loading_anim
    greet_commander
    call_main_menu
    $search_radius = 15
    $search_location = 'sol'
  end

  def self.greet_commander
    Display_main.print_greeting
    sleep (1)
  end

  def self.main_menu
    input = gets.to_i
    case input
    when 1
      Main_1.call_search_menu
    when 2
      Main_2.exit_program
    else
      reject_input
      call_main_menu
    end
  end

  def self.search_menu
    input = gets.to_i
    case input
    when 1
      Search_1.take_search_location
      call_search_menu
    when 2
      Search_2.take_search_radius
      call_search_menu
    when 3
      Search_3.view_params
      wait_for_enter
      call_search_menu
    when 4
      Search_4.clear_params
      call_search_menu
    when 5
      Search_5.view_systems
      call_search_menu
    when 6
      Search_6.clear_systems
      call_search_menu
    when 7
      Search_7.get_results_menu
    when 8
      Search_8.goto_main_menu
    when 9
      Search_9.exit_program
    else
      reject_input
      call_search_menu
    end
  end

  def self.results_menu
    Display_results.disp_results_menu
    input = gets.to_i
    case input
    when 1
      Results_1.add_system_to_array
      call_results_menu
    when 2
      Results_2.view_systems
      call_results_menu
    when 3
      Results_3.clear_systems
      call_results_menu
    when 4
      Results_4.call_search_menu
    when 5
      Results_5.call_main_menu
    when 6
      Results_6.exit_program
    else
      reject_input
      call_results_menu
    end
  end
  
  def self.exit_method
    system "clear"
    puts "Have a great day!"
    sleep(1)
    Animation.exit_anim
    system "clear"
  end

  def self.wait_for_enter
    print "press enter to continue"                                                                                                    
    STDIN.getc 
  end

  def self.reject_input
    puts "I'm sorry, that is not a valid option, please select again."
    wait_for_enter
  end

  def self.print_line
    puts "---------------------"
  end

  def self.call_main_menu
    Display_main.disp_main_menu
    main_menu
  end

  def self.call_search_menu
    Display_search.disp_search_menu
    search_menu
  end

  def self.call_results_menu
    Display_results.disp_results_menu
    results_menu
  end

end