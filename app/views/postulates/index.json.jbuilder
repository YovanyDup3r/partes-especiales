json.array!(@postulates) do |postulate|
  json.extract! postulate, :id, :user_id, :church_id, :music_type_id, :date, :music_name
  json.url postulate_url(postulate, format: :json)
end
