class PagesController < ApplicationController
  def home
  end

  def about
  end

  def newsfeed
  	@post = Post.new
  	@posts = Post.all.order(created_at: :desc)
  end

  def user_profile
  	@friendships = Friendship.all
    @profile_exists = false
    if Profile.exists?(user_id: current_user.id)
      @profile_exists = true
      @profile = Profile.find_by_user_id(current_user.id)
    end
  end

  def skills
    @skill_exists = false
    @skills = Skill.all
    @skill_exists = true
  end
end
