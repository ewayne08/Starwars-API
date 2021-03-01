#this is what communicates with the user, controller
require 'pry'

class Cli  
    def start
        puts "
        This is a galaxy filled with wonder, unknown, science, bizarre creatures, 
             aliens, weapons never seen before by man, terrible people
                   galaxy full of unknown but fantastic worlds, 
                     magical devices, fleets of unknown space
                        crafts, terrible conflict, and 
                               unending hope.
        .    .            .     .         .           .     .
.             .     .               .        .   .
        T h i s  i s  t h e  g r e a t e s t  g a l a x y  k n o w n  t o  m a n...
   .         .          .           .       .          .       .       .                          
         .        . .        .          .         .        .       .        .                    
            .           .      S T A R   W A R S      .       .      .
                .         .          .     .      .     .       .        .
        "
        puts "Welcome young padawan"
        puts "To View Star Wars Character, enter 'characters'"
        puts "To leave, enter 'exit'"
        menu
    end

    def menu 
        input = gets.strip.downcase
        if input == "characters"
            Api.create_characters
            character_list
            menu2
        elsif input == "exit"
            goodbye
        else
            invalid_entry
            menu
        end
    end

    def menu2
        puts "Would you like to see another character? y or n"
        input = gets.strip.downcase
        if input == "y"
            character_list
            menu2
        elsif input == "n"
            goodbye
        else 
            invalid_entry
        end
    end

