
class Systems

  attr_accessor :system, :selection_input, :json_parse
  @@all = []

  def initialize
    @@all << self
    
  end

  def self.all
    i = 1
    @@all.each do |system|
      puts "#{i}: #{system}"
      i+=1
    end
  end

  def self.add_system(selection_input)
    #binding.pry
    @@all << $json_parse[selection_input-1]
  end

  def self.clear_all
    @@all.clear
  end

end
