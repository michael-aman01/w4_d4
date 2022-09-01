class Disc

    def initialize(color,size)
        @color = color #has to be symbol 
        @size = Array.new(size,size)
    end

    def to_s
        @size.to_s.colorize(@color)
    end

end
