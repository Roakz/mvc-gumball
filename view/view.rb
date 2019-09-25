require_relative '../model/model'


class PrintScreen

    def initialize
       
    end


    def menu
        puts"Welcome to the Gumball Machine!\n
        What would you like to do?\n
        1. Check how many Gumballs\n
        2. Remove Gumballs\n
        3. Top Up machine\n
        4. Exit"
        return gets.chomp.to_i
    end

    def gumball_count(quantity)
    puts "There are #{quantity} Gumballs left"

    end

    def remove_gumball(storage)
        puts "How many gumballs would you like? There are #{storage} available."
        return gets.chomp.to_i
        puts "Thanks enjoy your gumballs"
    end

    def top_up(storage)
        puts "How many do you want to add? There are #{storage}"
        return gets.chomp.to_i
        puts "Thanks Balls added"
    end
    
end