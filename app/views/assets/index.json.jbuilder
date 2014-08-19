json.array!(@assets) do |asset|
  json.extract! asset, :id, :assetValue, :assetType
  json.url asset_url(asset, format: :json)
end
