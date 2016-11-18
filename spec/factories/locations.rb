FactoryGirl.define do
	factory :location, aliases: [:gerald_location] do
		latitude 12.3
		longitude 100.2
		altitude 20.3
		user
	end

	factory :bob_location do
		latitude 1.3
		longitude 10.2
		altitude 2.3
		association :user, factory: :bob
	end

	factory :becky_location do
		latitude 14.5
		longitude 7.2
		altitude 9.3
		association :user, factory: :becky
	end

end