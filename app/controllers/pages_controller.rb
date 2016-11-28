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

  def user_skills
    @skill_exists = false
    if Skill.exists?(user_id: current_user.id)
      @skill_exists = true
      @skills = Skill.all
    end
  end

  def user_education
    @education_exists = false
    if Education.exists?(user_id: current_user.id)
      @education_exists = true
      @education = Education.all
    end
  end

  def user_experiences
    @experience_exists = false
    if Experience.exists?(user_id: current_user.id)
      @experience_exists = true
      @experience = Experience.all
    end
  end
end
