require_relative '../view/view'
require_relative '../model/model'

class Control

    attr_accessor :model, :menu, :order, :leave

    def initialize
        @menu = PrintScreen.new
        @model = StorageBubble.new   
    end


    def menu_select
    
    loop do
        
        case @menu.menu
        when 1 
          system("clear")
          check_gumballs
          puts ""
        when 2
          remove_gumballs
          system("clear")
        when 3
          add_gumballs
          system("clear")
        when 4
            break
        end

    end 

    end

    def check_gumballs
        @menu.gumball_count(@model.quantity)
    end

    def remove_gumballs
        @order = @menu.remove_gumball(@model.quantity)
        @model.remove_gumball(@order)
    end
    
    def add_gumballs
      @order  = @menu.top_up(@model.quantity)
      @model.top_up(@order)
    end
end

run_program = Control.new
run_program.menu_select
