require 'net/http'
require 'open-uri'
require 'json'

class Api 

  def self.request_systems_from_edsm(search_center, search_radius)
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
