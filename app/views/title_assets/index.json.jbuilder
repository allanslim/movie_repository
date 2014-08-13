json.array!(@title_assets) do |title_asset|
  json.extract! title_asset, :id, :asset_id, :title_id
  json.url title_asset_url(title_asset, format: :json)
end
