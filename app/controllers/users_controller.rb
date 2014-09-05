class UsersController < ApplicationController
  def show
    #grabs the id paramter from the url /users/id and attempts to search for a user by id.
    @user = User.find(params[:id])
  end

  def new
  end
end
