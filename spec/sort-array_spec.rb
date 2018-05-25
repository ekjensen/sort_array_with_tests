require "sort-array"

describe "is sorter working?" do
    context "I sure hope so!" do
        it "better work" do
            expect(true).to eql(true)
        end
    end
end


describe "sort-array" do
    
    context "when given an array with one switch next to each other" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [1, 3, 2, 4]).to eql([1, 2, 3, 4])        
        end
    end
    
    context "when given an unsorted array" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [3, 2, 4, 1]).to eql([1, 2, 3, 4])        
        end
    end
   
    context "when given an unsorted array with equal numbers" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [1, 3, 1, 4, 5]).to eql([1, 1, 3, 4, 5])        
        end
    end

    context "when given an unsorted array with non-sequential numbers" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [1, 3, 1, 4, 5, 7]).to eql([1, 1, 3, 4, 5, 7])        
        end
    end

    context "when given an unsorted array with multi-digit numbers" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [1, 31, 17, 4, 532, 7]).to eql([1, 4, 7, 17, 31, 532])        
        end
    end

    context "when given an empty array" do
        it "returns an empty array" do
            sorter = Sorter.new
            expect(sorter.sort []).to eql([])        
        end
    end

    context "when given an array with one number" do
        it "returns that number in an array" do
            sorter = Sorter.new
            expect(sorter.sort [31]).to eql([31])        
        end
    end

    context "when given an array with negative numbers" do
        it "returns that array sorted from lowest to highest" do
            sorter = Sorter.new
            expect(sorter.sort [31, -2, 13]).to eql([-2, 13, 31])        
        end
    end
    
end