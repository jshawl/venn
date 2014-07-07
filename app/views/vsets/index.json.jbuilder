json.array!(@vsets) do |vset|
  json.extract! vset, :id, :name
  json.url vset_url(vset, format: :json)
end
