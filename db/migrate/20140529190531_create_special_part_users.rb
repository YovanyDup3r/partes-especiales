class CreateSpecialPartUsers < ActiveRecord::Migration
  def change
    create_table :special_part_users do |t|
      t.integer :special_part_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
