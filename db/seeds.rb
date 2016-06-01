10.times do
	Contact.create!(
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		number: Faker::PhoneNumber.phone_number
		)
end