

class Results_1

  def self.add_system_to_array
    puts "Select the system number:"
    selection_input = gets.to_i
    Systems.add_system(selection_input)
  end
  
end
