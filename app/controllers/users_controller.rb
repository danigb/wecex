class UsersController < ApplicationController
  include Clearance::App::Controllers::UsersController
  before_filter :authenticate

  def index
    redirect_to user_report_path(current_user)
  end
end