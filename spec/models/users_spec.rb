require 'rails_helper'

RSpec.describe User, type: :model do
	user_attributes = [:email, :name, :password]
	
	user_attributes.each do |t|
		it { should validate_presence_of(t) }
	end

	it { should have_one(:location) }
	
	# these are different, figure them out later
	# it { should have_many(:assigned_producers) }
	# it { should have_many(:assigned_consumers) }

	it 'has a valid factory' do
		expect(build(:user)).to be_valid
	end
end