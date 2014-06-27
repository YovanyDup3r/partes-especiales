json.array!(@special_part_users) do |special_part_user|
  json.extract! special_part_user, :id, :special_part_id, :user_id, :comment
  json.url special_part_user_url(special_part_user, format: :json)
end
