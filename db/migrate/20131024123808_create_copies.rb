class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.references :item, index: true
      t.references :box, index: true

      t.timestamps
    end
  end
end
