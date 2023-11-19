json.extract! payment, :id, :amount, :description, :created_at, :updated_at
json.customer do
  json.firstname payment.customer.firstname
  json.lastname payment.customer.lastname
  json.fullname "#{payment.customer.firstname} #{payment.customer.lastname}"
end
json.customer_name "#{payment.customer.firstname} #{payment.customer.lastname}"
json.url payment_url(payment, format: :json)
