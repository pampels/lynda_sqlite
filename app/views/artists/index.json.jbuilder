json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :biography, :birthdate
  json.url artist_url(artist, format: :json)
end
