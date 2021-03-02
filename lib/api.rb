#where external data will be brought in, instantiate objects

require 'pry'
require_relative './characters.rb'
class Api 

   

    def self.fetch_characters
        
        url = "https://www.swapi.tech/api/people/"

        uri = URI(url)
        response = Net::HTTP.get(uri)
        characters = JSON.parse(response)

    end


    def self.update_character(url)
  
        uri = URI(url)
        response = Net::HTTP.get(uri)
        characters = JSON.parse(response)
        characters["result"]["properties"]
        # binding.pry
    end

    def self.create_characters 
        character = fetch_characters
   
        character["results"].each{|character| Characters.new(character["name"], character["url"])}
    end


end



 
    
