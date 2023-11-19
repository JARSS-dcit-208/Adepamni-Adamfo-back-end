json.extract! customer, :id, :firstname, :lastname, :fullname, :phone, :email, :address, :created_at, :updated_at
json.measurement do
  json.extract! customer.measurement, 
  :id,
  :height, :weight,
  :bust,
  :waist,
  :hips,
  :back_waist_length,
  :front_waist_length,
  :shoulder_to_shoulder,
  :chest_depth,
  :armhole_depth,
  :inseam,
  :crotch_depth,
  :neck_circumference,
  :sleeve_length,
  :bicep_circumference,
  :forearm_circumference,
  :thigh_circumference,
  :knee_circumference,
  :calf_circumference,
  :ankle_circumference
end
json.dresses customer.dresses.order(created_at: :desc) do |dress|
  json.id dress.id
  json.name dress.name
  json.image_url rails_blob_url(dress.image) if dress.image.attached?
  json.updated_at dress.updated_at
end
json.url customer_url(customer, format: :json)
