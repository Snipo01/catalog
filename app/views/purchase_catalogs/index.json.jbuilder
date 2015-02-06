json.array!(@purchase_catalogs) do |purchase_catalog|
  json.extract! purchase_catalog, :id, :product_name, :price, :picture, :quantity_purchased, :place_of_purchase, :location_of_use
  json.url purchase_catalog_url(purchase_catalog, format: :json)
end
