class ReportsController < ApplicationController
  before_filter :load_user, :load_report

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @report.update_attributes(params[:report])
        flash[:notice] = 'Report was successfully updated.'
        format.html { redirect_to(@report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
  def load_report
    if @user.report.nil?
      Report.new(:user => @user).save!
    end
    @report = @user.report
  end
end
