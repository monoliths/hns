require 'rails_helper'

RSpec.describe Location, type: :model do
	location_attributes = [:altitude, :longitude, :latitude]
	location_attributes.each do |attr|
		it { should validate_presence_of(attr) }
	end

	it { should belong_to(:user) }

	it 'has a valid factory' do
		expect(build(:location)).to be_valid		
	end
end