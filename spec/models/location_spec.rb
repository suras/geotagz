require 'spec_helper'

describe Location do 
	self.use_transactional_fixtures = false

	before(:each) do 
	@attr = {
	      :address => "chennai, tamilnadu"
	    }
	end


	it "should create a latitude and longitude" do
		@location = Location.create!(@attr)
		@location.should respond_to(:latitude)
		@location.should respond_to(:longitude)
		@location.latitude.to_i.should be > 1
		@location.longitude.to_i.should be > 1
	end
end