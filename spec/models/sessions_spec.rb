require 'rails_helper'

RSpec.describe Session, type: :model do
	session_attributes = [:approval]

	session_attributes.each do |attr|
		it { should validate_presence_of(attr) }
	end

	it 'has a valid facory' do
		expect(build(:location)).to be_valid
	end
end 