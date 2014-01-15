require 'spec_helper'

describe User do
	describe "add User to database" do 
		before do 
			@user = User.create(name: "Ann Kim")
		end
		it "will have stored a new user to database" do
			@user.name.should == "Ann Kim"
		end
	end
end
