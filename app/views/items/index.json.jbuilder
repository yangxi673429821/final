json.array!(@items) do |item|
  json.extract! item, :name, :item_type, :barcode, :price
  json.url item_url(item, format: :json)
end
