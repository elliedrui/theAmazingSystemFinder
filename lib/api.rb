require 'net/http'
require 'open-uri'
require 'json'

class Api < Cli

  attr_accessor :name, :search_location, :system_search_parameter, :max_search_radius, :search_radius, :json_parse
  
  

  def initialize
    @name=name
  
    @search_location=search_location    
    @system_search_parameter=system_search_parameter
    @max_search_radius=max_search_radius
  end


  def self.request_systems_from_edsm(search_center="sol", search_radius=15)
    puts "Fetching API Scraper"
    url = "https://www.edsm.net/api-v1/sphere-systems\?systemName=#{search_center}\&radius=#{search_radius}\&showPrimaryStar=1"
    uri = URI.parse(url)      
    uri.open
    request_result = uri.open   
    $json_parse = JSON.parse(request_result.read)   
  end

  def self.display_api_results
    i = 1
    system "clear"
    Cli.print_line
    puts "Here are your search results, Commander:"
    $json_parse.each do |system|
      puts "#{i}: #{system}"
      i+=1
    end
    Cli.print_line
  end


end
