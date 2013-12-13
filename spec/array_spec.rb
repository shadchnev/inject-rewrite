require "./lib/array"

describe Array do
  context "The 'shoot' method should" do
    it "add all the values in the array [1,2,3,4,5]" do
      expect([1,2,3,4,5].shoot { |sum, number| sum + number}).to eq(15)
    end

    it "multiply all the values in the array [1,2,3,4,5]" do
      expect([1,2,3,4,5].shoot { |sum, number| sum * number}).to eq(120)
    end
    
    it "subtract all the values in the array [1000,100,10,1]" do
      expect([1000,100,10,1].shoot { |sum, number| sum - number}).to eq(889)
    end

    it "divides all the values in the array [10000,10,5,10]" do
      expect([10000,10,5,10].shoot { |sum, number| sum / number}).to eq(20)
    end

    it "take a symbol (:+)  as an argument instead of a block" do
      expect ([1,2,3,4,5].shoot(:+)).to eq(15)
    end
  end
end
