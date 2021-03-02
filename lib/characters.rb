#where objects are created and stored for user display, aka StarWars characters
#attr_reader lets you read it but not change it #attr_accessor lets you change it
class Characters 
    attr_accessor :name, :gender, :url, :birth_year
    @@all = []

    def initialize(name, url)
        @name = name
        @url = url
        @@all << self #shovels value into array
    end

   

    
    def save
        @@all << self
    end
    #self calls on character class
    def self.all
        @@all
    end
    #do and end is iteration 
    def self.find_by_name(name)
        self.all.find do |character|
            character.name.downcase == name.downcase
        end
    end

    def update_character
        info = Api.update_character(self.url) #updates character ino
        @birth_year = info["birth_year"]
        @gender = info["gender"]
     
    end

 

end