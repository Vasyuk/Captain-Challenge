class CreateWarrior < ActiveRecord::Migration[5.2]
  def change
    create_table :warriors do |t|
      t.integer :creater_id
      t.string :image
      t.string :name, null: false
      t.text :description
      t.integer :level,  default: 1
      t.integer :strength, default: 2
      t.integer :armor, default: 2
    end
  end
end
