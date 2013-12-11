require "./lib/array"

describe Array do
  context "The 'shoot' method should" do
    it "add all the values in the array [1,2,3,4,5]" do
      expect([1,2,3,4,5].shoot { |sum, number| sum + number}).to eq(15)
    end
  end
end
