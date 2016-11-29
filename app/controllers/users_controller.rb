class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		
		@show_exists = false
    	if Profile.exists?(user_id: @user.id)
     	 @show_exists = true
     	 @profile = Profile.find_by_user_id(@user.id)
    	end

	    @show_skill = false
	    if Skill.exists?(user_id: @user.id)
	      @show_skill = true
	      @skills = Skill.all
	    end

	    @show_education = false
	    if Education.exists?(user_id: @user.id)
	      @show_education = true
	      @education = Education.all
	    end

	    @show_experience = false
	    if Experience.exists?(user_id: @user.id)
	      @show_experience = true
	      @experience = Experience.all
	    end

	    @not_friends = true
		if current_user.friendships.exists?(friend_id: @user.id)
			@not_friends = false
		end
	end
	
end
