class PostsController < ApplicationController

 before_action :logged_in_user, only: [:create, :destroy]
 before_action :correct_user,   only: [:show, :edit, :destroy]
 before_action :find_note, only: [:show, :edit, :update]

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted"
    redirect_to request.referrer || root_url
  end

  def edit
  end

  def show
  end

  def update
    @post.status = 'edited'
    @post.update(post_params)
    redirect_to @post
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end
    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end

  def find_note
    @post = Post.find(params[:id])
  end


end
