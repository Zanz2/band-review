json.array!(@bands) do |band|
  json.extract! band, :id, :title, :description, :band_members, :rating
  json.url band_url(band, format: :json)
end
