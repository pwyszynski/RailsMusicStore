json.array!(@musiccds) do |musiccd|
  json.extract! musiccd, :id, :title, :author, :release_year, :price, :description, :cover_url
  json.url musiccd_url(musiccd, format: :json)
end
