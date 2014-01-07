json.array!(@albums) do |album|
  json.extract! album, :id, :title, :artist, :description, :published_date
  json.url album_url(album, format: :json)
end
