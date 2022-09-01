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
        indices_hash = Hash.new {|h,k| h[k] = []}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                indices_hash[i] << self[j][i]
            end
        end
        indices_hash.values
    end

    def stock_picker
        max_profit = 0
        max_days = []
        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                if self[j] - self[i] > max_profit
                    max_profit = self[j] - self[i]
                    max_days = [i,j]
                end
            end
        end
        max_days
    end
     


end

[0,1,2,3,2,1].stock_picker