# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Customer.delete_all
Measurement.delete_all
Dress.delete_all
customers = Customer.create(
  (1..100).map do |_index| 
    { 
      firstname: Faker::Name.first_name,
      lastname: Faker::Name.last_name,
      phone: Faker::PhoneNumber.phone_number,
      address: Faker::Address.full_address,
      email: 'caleb@gmail.com',
      measurement: Measurement.new({
        height: 10,
        weight: 10,
        bust: 10,
        waist: 10,
        hips: 10,
        back_waist_length: 10,
        front_waist_length: 10,
        shoulder_to_shoulder: 10,
        chest_depth: 10,
        armhole_depth: 10,
        inseam: 10,
        crotch_depth: 10,
        neck_circumference: 10,
        sleeve_length: 10,
        bicep_circumference: 10,
        forearm_circumference: 10,
        thigh_circumference: 10,
        knee_circumference: 10,
        calf_circumference: 10,
        ankle_circumference: 10,
      }),
      dresses: (1..3).map do |index|
        Dress.new({
          name: "Test dress #{index}"
        })
      end,
      payments: (1..3).map do |index|
        Payment.new({
          description: "Christmas attire",
          amount: 50.00,
        })
      end
    }

  end
)
  # Character.create(name: 'Luke', movie: movies.first)
