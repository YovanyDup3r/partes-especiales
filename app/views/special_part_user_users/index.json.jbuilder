json.array!(@special_part_user_users) do |special_part_user_user|
  json.extract! special_part_user_user, :id, :special_part_user_id, :special_part_id, :user_id, :like
  json.url special_part_user_user_url(special_part_user_user, format: :json)
end
