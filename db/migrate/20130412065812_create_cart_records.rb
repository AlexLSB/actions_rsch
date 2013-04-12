class CreateCartRecords < ActiveRecord::Migration
  def change
    create_table :cart_records do |t|
      t.integer :cart_id
      t.integer :product_id

      t.timestamps
    end
  end
end
