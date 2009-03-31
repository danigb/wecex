class UsersController < ApplicationController
  include Clearance::App::Controllers::UsersController
  before_filter :authenticate, :except => [:new, :create]

  def index
    redirect_to report_path
  end
end