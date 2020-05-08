


# should do.....what? 
# will be responsible for holding the object containing the list of stars and provide the methods for sorting through the data and collecting the systems that  


# build the saving function for storing and give an option for new search or see saved. once fuicntionality == true add search fanciness




class Systems

  attr_accessor :system
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
