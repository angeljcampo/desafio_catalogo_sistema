json.extract! payment, :id, :order_id, :paymentable_id, :paymentable_type, :created_at, :updated_at
json.url payment_url(payment, format: :json)
