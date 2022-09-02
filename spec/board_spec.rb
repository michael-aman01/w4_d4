require "rspec"
require "board"

describe Board do
    subject(:board) { Board.new }

    describe "#move" do
        it "should remove first element " do
            board.pole_1 = [1, 2, 3]
            board.pole_2 = []
            board.pole_3 = []
            board.move(1, 2)
            expect(board.pole_1).to eq([2, 3])
            expect(board.pole_2).to eq([1])
            expect(board.pole_3).to eq([])

        end

        context "end_pole has a disk on top greater than start_pole selected disk" do
            it "should not allow move" do 
                board.pole_1 = [2, 3]
                board.pole_2 = [1]
                board.pole_3 = []
                board.move(1, 2)
                expect(board.pole_1).to eq([2, 3])
                expect(board.pole_2).to eq([1])
                expect(board.pole_3).to eq([])
            end
        end

        context "end_pole is same as start_pole" do
            it "should not allow move" do 
                board.pole_1 = [1, 2, 3]
                board.pole_2 = []
                board.pole_3 = []
                board.move(1, 1)
                expect(board.pole_1).to eq([1, 2, 3])
                expect(board.pole_2).to eq([])
                expect(board.pole_3).to eq([])
            end
        end
    end
end
