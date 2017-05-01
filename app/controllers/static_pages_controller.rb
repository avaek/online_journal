class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed
    end
  end

  def help
  end

  def about
  end

#this can be deleted when finished testing
  def newpost
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed
  end
end


end
