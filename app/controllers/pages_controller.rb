class PagesController < ApplicationController
  def home
  end

  def about
  end

  def newsfeed
  	@post = Post.new
  end

end
