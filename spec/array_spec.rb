require "rspec"
require "array"

describe Array do

    describe "#my_unique" do
        it "removes duplicates from array (self)" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do
        it "finds all pairs of positions whose elements sum to zero" do 
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        it "rearranges positions of elements based on index" do 
            expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        it "returns array of 2 elements where value at first position minus value at second position yields greatest difference" do
            expect([0,1,2,3,2,1].stock_picker).to eq([0,3])
        end
    end
end