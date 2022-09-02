require 'colorize'

class Board
    def initialize
        @discs = [Disc.new(:red,1),Disc.new(:yellow,2),Disc.new(:blue,3),Disc.new(:orange,4)]
        @pole_1 = Pole.new(1)
        @pole_2 = Pole.new(2)
        @pole_3 = Pole.new(3)
      
        @pole_1.container += @discs
        
        @poles = [@pole_1,@pole_2,@pole_3]

        # self.print_board    
    end

    def print_board
        (0...6).each do |i|
            puts [@pole_1.to_s[i],@pole_2.to_s[i],@pole_3.to_s[i]].join(" ")
        end
    end

end




b = Board.new
