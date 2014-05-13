require "rspec"
require_relative "rspectest"

describe Animal do
  let(:animal) { Animal.new("omnivore", 4) }

  context "#initialize" do
    it "creates an Animal object" do
      expect(animal).to be_an_instance_of Animal
    end

    it "requires two parameters" do
      expect { Animal.new }.to raise_error(ArgumentError)
    end
  end

  context "#legs" do
    it "should return the amount of legs" do
      expect(animal.num_of_legs).to eq 4
    end
  end

  context "#diet" do
    it "should return the animal's diet" do
      expect(animal.diet).to eq "omnivore"
    end
  end

  context "#cold_blooded" do
    it "should be false" do
      expect(animal.cold_blooded?).to eq false
    end
  end
end