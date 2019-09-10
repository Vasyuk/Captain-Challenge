class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :type_item, null: false
      t.string :name, null: false
      t.integer :power, null: false
    end
  end
end
