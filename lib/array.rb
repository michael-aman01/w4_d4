class Array

    def my_uniq
        dupes_hash = Hash.new()
        self.each {|elem| dupes_hash[elem] = true}
       
        dupes_hash.keys
    end

    def two_sum
        pairs = []

        (0...self.length).each do |j|
            (j + 1...self.length).each do |i|
                pairs << [j, i] if self[j] + self[i] == 0
            end
        end

        pairs
    end

    def my_transpose
        
    end

end
