json.array!(@titles) do |title|
  json.extract! title, :id, :name, :description, :length, :rating
  json.url title_url(title, format: :json)
end
