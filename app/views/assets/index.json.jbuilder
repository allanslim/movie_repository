json.array!(@assets) do |asset|
  json.extract! asset, :id, :asset, :type
  json.url asset_url(asset, format: :json)
end
