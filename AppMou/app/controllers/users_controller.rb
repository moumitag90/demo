class UsersController < ApplicationController
def index
	@users=User.all
end
def new
	@user=User.new
end
def create
 user=User.create(params[:user])
  redirect_to user_path
end
def show
  @user=User.find(params[:id])
end
end
