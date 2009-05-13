class ProvinciasController < ApplicationController
  def index
    @provincias = Provincia.all
    respond_to do |format|
      format.html { render :layout =>  false}
      format.xml { render :xml => @provincias}
    end

  end

  def show
    @provincia = Provincia.find params[:id]
    @municipios = @provincia.municipios
    respond_to do |format|
      format.html { render :layout =>  false}
      format.xml { render :xml => @municipios}
      format.json {  render :json => @municipios.map {|m| {:name => m.name, :id => m.id} } }
    end
  end

end
