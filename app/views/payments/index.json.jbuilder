json.meta do
  json.total_pages @payments.total_pages
  json.total @payments.count
end
json.data do 
  json.array! @payments, partial: "payments/payment", as: :payment
end