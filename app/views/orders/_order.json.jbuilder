json.extract! order, :id, :date_submited, :status, :subtotal, :shipping, :tax, :total, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
