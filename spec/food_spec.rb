require 'food'

RSpec.describe Food do
  it "has a version number" do
    expect(Food::VERSION).not_to be nil
  end

  describe Food::Food do
  it "broccoli is gross" do
    expect(Food::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Food::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
  	expect(Food::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
end
