class AddIndexToItemsDescription < ActiveRecord::Migration
  def change
    add_index :items, :description, unique: true
  end
end
