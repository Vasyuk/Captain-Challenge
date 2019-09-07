class CreateWarrior < ActiveRecord::Migration[5.2]
  def change
    create_table :warriors do |t|
      t.integer :creater_id
      t.string :image
      t.string :name, null: false
      t.integer :strength, default: 0
      t.integer :armor, default: 0
      t.integer :endurance, default: 0
    end
  end
end
