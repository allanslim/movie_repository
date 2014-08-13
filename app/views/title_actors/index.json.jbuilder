json.array!(@title_actors) do |title_actor|
  json.extract! title_actor, :id, :title_id, :actor_id
  json.url title_actor_url(title_actor, format: :json)
end
