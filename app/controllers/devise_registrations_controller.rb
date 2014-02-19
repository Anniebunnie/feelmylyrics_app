class DeviseRegistrationsController < ApplicationController


def new
	@user = User.create!({
		email: params[:email],
		name: params[:name]

		})
end


end
