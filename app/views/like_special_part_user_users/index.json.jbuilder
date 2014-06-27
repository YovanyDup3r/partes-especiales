json.array!(@like_special_part_user_users) do |like_special_part_user_user|
  json.extract! like_special_part_user_user, :id, :special_part_id, :church_id, :user_id, :like
  json.url like_special_part_user_user_url(like_special_part_user_user, format: :json)
end
