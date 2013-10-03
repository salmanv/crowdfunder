require 'spec_helper'

describe Pledge do
	it "should require a user" do 
		Pledge = FactoryGirl.build(:pledge, user: nil)

		# Should not be able to save 
		pledge.should_not == pledge.save

		expect(pledge).to have(1).errors_on(:user)
	end

	it "should require a project" do 
		pledge = FactoryGirl.build(:pledge, project: nil)

		# should not be able to save 
		pledge.should_not == pledge.save


		expect(pledge).to have(1).errors_on(:project_id)
	end


	it "should require an amount" do 
		pledge = FactoryGirl.build(:pledge, amount: nil)

		#should not be bale to save 

		pledge.should_not == pledge.save

		expect(pledge).to have(1).errors_on(:amount)
	end


	it "should require an amount greater than 0" do 
		pledge = FactoryGirl.build(:pledge, amount: -10)

		#should not be able to save 

		pledge.should_not == pledge.save

		expect(pledge).to have(1).errors_on(:amount)
	end

	it "should require an amount to be an integer" do 
		pledge = FactoryGirl.built(:pledge, amount: 'abc')

		#should not be able to save 
		pledge.should_not == pledge.save

		expect(pledge).to ahve(1).errors_on(:amount)
	end
end

	
