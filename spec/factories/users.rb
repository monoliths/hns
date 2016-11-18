FactoryGirl.define do 
	factory :user, aliases: [:generic_user] do
		email 'example@example.com'
		name 'example'
		password '123123123'
		password_confirmation '123123123'
	end
	factory :gerald do
		email 'gerald@example.com'
		name 'gerald'
		password '123123123'
		password_confirmation '123123123'
	end

	factory :bob do
		email 'bob@example.com'
		name 'bob'
		password '123123123'
		password_confirmation '123123123'
	end

	factory :becky do
		email 'becky@example.com'
		name 'becky'
		password '123123123'
		password_confirmation '123123123'
	end
end