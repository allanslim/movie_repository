json.array!(@actors) do |actor|
  json.extract! actor, :id, :firstname, :lastname, :age
  json.url actor_url(actor, format: :json)
end
