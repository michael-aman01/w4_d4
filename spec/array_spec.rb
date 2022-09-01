require "rspec"
require "array"

describe Array do

    describe "#my_unique" do
        it "removes duplicates from array (self)" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
    end
end