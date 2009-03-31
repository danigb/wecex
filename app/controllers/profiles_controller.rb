class ProfilesController < ApplicationController
  before_filter :authenticate
  before_filter :load_user, :load_profile

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @profile }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        flash[:notice] = 'Profile was successfully updated.'
        format.html { redirect_to(@profile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
  def load_profile
    if @user.profile.nil?
      profile = Profile.new(:user => @user)
      profile.save!
    end
    @profile = @user.profile
  end
end
