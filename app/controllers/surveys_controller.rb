class SurveysController < ApplicationController
  before_filter :authenticate
  before_filter :load_user, :load_profile

  def show
    respond_to do |format|
      format.html { redirect_to :action => 'edit' }
      format.xml  { render :xml => @profile }
    end
  end

  def edit
    @provincias_select = Provincia.all.collect {|p| [ p.name, p.id ] }
    if @profile.provincia
      @municipios_select = @profile.provincia.municipios.collect {|m| [m.name, m.id] }
    else
      @municipios_select = []
    end
  end

  def update
    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        flash[:notice] = 'Profile was successfully updated.'
        format.html { redirect_to survey_url }
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
      Profile.create(:user => @user)
    end
    @profile = @user.profile
  end

end
