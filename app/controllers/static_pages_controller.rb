class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed
    #following two lines are for organizing posts by month
 @posts_by_month = current_user.feed.group_by { |post| post.created_at.strftime("%B") }
      if is_admin?
      @users = User.where(admin: false, supervisor: false)
      @admins = User.where(admin: true)
      @supervisors = User.where(supervisor: true)
    end

    
    end

  end

  def help
  end

  def about
  end





end
