json.array!(@crowns) do |crown|
  json.extract! crown, :id, :name, :description, :price
  json.url crown_url(crown, format: :json)
end
