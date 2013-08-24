class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.string :description
      t.string :location
      t.string :value
      t.string :damage
      t.binary :picture

      t.timestamps
    end
  end
end
