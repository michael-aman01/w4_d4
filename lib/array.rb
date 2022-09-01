class Array

    def my_uniq
        dupes_hash = Hash.new()
        self.each {|elem| dupes_hash[elem] = true}
       
        dupes_hash.keys
    end

end


def test
    test
end
p [1, 2, 1, 3, 3].my_uniq