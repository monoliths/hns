FactoryGirl.define do
	factory :session do
		consumer
		producer
		approval false
	end

	factory :gerald_bob do
		association :consumer, factory: :gerald
		association :producer, factory: :gerald_bob
		approval true
	end

	factory :beck_bob do
		association :consumer, factory: :bob
		association :producer, factory: :becky
		approval true
	end
	
end