json.array!(@copies) do |copy|
  json.extract! copy, :item_id, :box_id
  json.url copy_url(copy, format: :json)
end
