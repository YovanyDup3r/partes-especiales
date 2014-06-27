class CreatePostulates < ActiveRecord::Migration
  def change
    create_table :postulates do |t|
      t.integer :user_id
      t.integer :church_id
      t.integer :music_type_id
      t.datetime :date
      t.string :music_name

      t.timestamps
    end
  end
end
