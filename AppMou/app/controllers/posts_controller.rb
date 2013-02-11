class PostsController < ApplicationController

def new
@post=Post.new
end

def create
user=User.find(params[:user_id])
post=user.posts.create(params[:post])
redirect_to user_path(user)
end

def show
@user = User.find(params[:user_id])
@post= @user.posts.find(params[:id])
end

def index
@user =User.find(params[:user_id])
@posts=@user.posts.find(:all)

end

def edit
@user=User.find(params[:user_id])
@post=@user.posts.find(params[:id])
end

def update
@user=User.find(params[:user_id])
@post=@user.posts.find(params[:id])
@post.update_attributes(params[:post])
@post.save!
redirect_to user_post_path(@user)
end

def destroy
@user = User.find(params[:user_id])
@post= @user.posts.find(params[:id])
@post.destroy
redirect_to user_posts_path(@user)
end

end
