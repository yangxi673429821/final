json.array!(@boxes) do |box|
  json.extract! box, :name, :barcode
  json.url box_url(box, format: :json)
end
