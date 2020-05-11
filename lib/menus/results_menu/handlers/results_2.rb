class Results_2

  def self.view_systems
    Systems.all
    Cli.wait_for_enter
   end
  
end