json.array!(@title_owners) do |title_owner|
  json.extract! title_owner, :id, :title_id, :studio_id
  json.url title_owner_url(title_owner, format: :json)
end
