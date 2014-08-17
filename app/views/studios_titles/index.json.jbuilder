json.array!(@studios_titles) do |studios_title|
  json.extract! studios_title, :id, :title_id, :studio_id
  json.url studios_title_url(studios_title, format: :json)
end
