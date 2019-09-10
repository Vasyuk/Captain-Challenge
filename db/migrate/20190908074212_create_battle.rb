class CreateBattle < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :warrior_one_id, null: false
      t.integer :warrior_two_id, null: false
      t.integer :winner_id, null: false
      t.timestamps
    end
  end
end
