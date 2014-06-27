json.array!(@special_parts) do |special_part|
  json.extract! special_part, :id, :church_id, :user_id, :video_url, :audio_url
  json.url special_part_url(special_part, format: :json)
end
