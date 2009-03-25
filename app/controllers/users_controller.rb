class UsersController < ApplicationController
  include Clearance::App::Controllers::UsersController

  def index
    @users = User.find :all
  end
end