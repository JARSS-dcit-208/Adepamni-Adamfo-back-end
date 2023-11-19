json.meta do
  json.total_pages @customers.total_pages
  json.total @customers.count
end
json.data do 
  json.array! @customers, partial: "customers/customer", as: :customer
end