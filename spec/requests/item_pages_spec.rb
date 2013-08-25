
require 'spec_helper'

describe "Item pages" do

 subject { page }

  describe "profile page" do
    let(:item) { FactoryGirl.create(:item) }
    before { visit item_path(item) }

    it { should have_content(item.category) }
    it { should have_title(item.category) }
end

  describe "add item" do
    before { visit additem_path }

    it { should have_content('Add item') }
    it { should have_title(full_title('Add item')) }
  end
 
  describe "Add item" do
    before { visit additem_path }

    let(:submit) { "Create an item " }

    describe "with invalid information" do
      it "should not create an item" do
      expect { click_button submit }.not_to change(Item, :count)
    end
  end

    describe "with valid information" do
      before do
        fill_in "Category",with: "Example Category"
        fill_in "Description",with: "Example Description"
        #fill_in "location",with: "Example Location"
        fill_in "Value", with: "300.00"
      end

      it "should create an item" do
        expect { click_button submit }.to change(Item, :count).by(1)
      end
    end
  end
end



