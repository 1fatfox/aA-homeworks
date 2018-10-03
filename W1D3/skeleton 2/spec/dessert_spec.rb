require 'rspec'
require 'dessert.rb'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to be (String)
    end

    it "sets a quantity" do
      expect(dessert.quantity).to be (Integer)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty(Array)
    end

    it "raises an 'argument error' when given a non-integer quantity" do
      expect do
        dessert.quantity('potato')
      end.to raise_error("ArgumentError")
    end
  end
end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('sugar')
      expect(dessert.ingredients[-1]).to be ('sugar')
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.mix).to eq(ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
    expect

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
