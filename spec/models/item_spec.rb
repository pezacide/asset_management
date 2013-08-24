
require 'spec_helper'

describe Item do

  before do
   @item = Item.new(category: "Chair", description: "Brown leather Carver", location: "warehouse", value: "$300", damage: "nil") 
  end

  subject { @item }

  it { should respond_to(:category) }
  it { should respond_to(:description) }
  it { should respond_to(:location) }
  it { should respond_to(:value) }
  it { should respond_to(:damage) }

  it { should be_valid }

  describe "when category is not present" do
    before { @item.category = " " }
    it { should_not be_valid }
  end

    describe "when description is not present" do
    before { @item.description = " " }
    it { should_not be_valid }
  end

  describe "when location is not present" do
    before { @item.location = " " }
    it { should_not be_valid }
  end

  describe "when value is not present" do
    before { @item.value = " " }
    it { should_not be_valid }
  end

  describe "when category is too long" do
    before { @item.category = "a" * 21 }
    it { should_not be_valid }
  end

   describe "when descriptio is too long" do
    before { @item.description = "a" * 51 }
    it { should_not be_valid }
  end

   describe "when location is too long" do
    before { @item.location = "a" * 21 }
    it { should_not be_valid }
  end

   describe "when value is too long" do
    before { @item.value = "a" * 11 }
    it { should_not be_valid }
  end

  describe "when value format is valid" do
    it "should be valid" do
      amounts = %w[$300.00 $3000.00}
      amounts.each do |valid_amount|
        @uitem.value = valid_amount
        expect(@item).to be_valid
      end
    end
  end

  describe "when description is already taken" do
    before do
      item_with_same_description = @item.dup
      item_with_same_description.save
    end

    it { should_not be_valid }
  end
end





