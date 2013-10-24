class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.string :barcode
      t.float :price

      t.timestamps
    end
  end
end
