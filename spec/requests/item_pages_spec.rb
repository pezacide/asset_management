
require 'spec_helper'

describe "Item pages" do

 subject { page }

  describe "add item" do
    before { visit additem_path }

    it { should have_content('Add item') }
    it { should have_title(full_title('Add item')) }
  end
end

