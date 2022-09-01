class Pole
    attr_accessor :container

    def initialize(number)
        @number = number
        @container = []
    end

    def [](pos)
        row, col = pos
        @container[row][col]
    end

    def []=(pos,new_val)
        self[pos] = new_val
    end

    def add_disc(disc)
        @container.unshift(disc)
    end

    def to_s
        string_pole = []
      
        @container.each_with_index do |disc,i|
            space =  " " * (@container.length - i)
            string_pole << "#{space}#{disc.to_s}"
        end
        string_pole << "--------------"
        string_pole << "    POLE #{@number}"
        missing = 6 - string_pole.length
        if missing > 1
            missing.times {string_pole.unshift(" ")}
        end
        string_pole
    end


end