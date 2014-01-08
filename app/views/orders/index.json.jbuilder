json.array!(@orders) do |order|
  json.extract! order, :id, :invoice_number
  json.url order_url(order, format: :json)
end
