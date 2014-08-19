json.array!(@assets) do |asset|
  json.extract! asset, :id, :assetValue, :assetType, :title_id
  json.url asset_url(asset, format: :json)
end
