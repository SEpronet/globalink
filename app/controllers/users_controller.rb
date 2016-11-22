class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@show_exists = false
    	if Profile.exists?(user_id: @user.id)
     	 @show_exists = true
     	 @profile = Profile.find_by_user_id(@user.id)
    end
	end
	
end
