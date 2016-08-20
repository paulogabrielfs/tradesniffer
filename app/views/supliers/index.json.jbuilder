json.array!(@supliers) do |suplier|
  json.extract! suplier, :id, :name, :federal_id, :country, :city, :state, :address, :zip_code
  json.url suplier_url(suplier, format: :json)
end
