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

    it "take a symbol (:+) as an argument instead of a block" do
      expect([1,2,3,4,5].shoot(&:+)).to eq(15)
    end

    it "take a symbol (:-) as an argument instead of a block" do
      expect([1,2,3,4,5].shoot(&:-)).to eq(-13)
    end

    it "take a symbol (:*) as an argument instead of a block" do
      expect([1,2,3,4,5].shoot(&:*)).to eq(120)
    end

    it "take a symbol (:/) as an argument instead of a block" do
      expect([983745,13,83,3,9].shoot(&:/)).to eq(33)
    end

    it "take a number as an argument to be used as the first item" do
      expect([2,3,4,5].shoot(1) { |sum, number| sum + number }).to eq(15)
    end

    it "concatenate an array of strings" do
      expect(["I ", "can ", "haz ", "sticker", "?"].shoot(&:+)).to eq("I can haz sticker?")
    end
  end
end
