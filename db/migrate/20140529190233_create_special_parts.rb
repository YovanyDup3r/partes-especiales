class CreateSpecialParts < ActiveRecord::Migration
  def change
    create_table :special_parts do |t|
      t.integer :church_id
      t.integer :user_id
      t.string :video_url
      t.string :audio_url

      t.timestamps
    end
  end
end
