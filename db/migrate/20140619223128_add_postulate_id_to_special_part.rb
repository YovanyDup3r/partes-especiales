class AddPostulateIdToSpecialPart < ActiveRecord::Migration
  def change
    add_column :special_parts, :postulate_id, :integer
  end
end
