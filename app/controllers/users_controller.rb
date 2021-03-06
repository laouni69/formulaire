class UsersController < ApplicationController
	def new
	    @user = User.new
	end

	def create
	    @user = User.new(user_params)
	    @user.save
	    if @user.save
	      flash[:success] = "user create"
	    end
	end

	def show
	    @user = User.find(params[:id])
	end


	private

	def user_params
	    params.require(:user).permit(:email, :phone, :password,
	                                 :password_confirmation)
	end

end
