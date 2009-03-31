# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Clearance::App::Controllers::ApplicationController
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  layout 'wecex'

  private
  def load_user
    @user = User.find(params[:user_id])
  end

end
