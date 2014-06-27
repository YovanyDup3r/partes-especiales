class CreateLikeSpecialPartUserUsers < ActiveRecord::Migration
  def change
    create_table :like_special_part_user_users do |t|
      t.integer :special_part_id
      t.integer :church_id
      t.integer :user_id
      t.boolean :like

      t.timestamps
    end
  end
end
