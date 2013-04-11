class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.string :picture
      t.string :price
      t.integer :categoryid
      t.string :name
      t.string :vendor
      t.text :description

      t.timestamps
    end
  end
end
