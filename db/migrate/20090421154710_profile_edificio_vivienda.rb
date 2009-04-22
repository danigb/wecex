class ProfileEdificioVivienda < ActiveRecord::Migration
  def self.up

    add_column :profiles, :provincia_id, :integer
    add_column :profiles, :municipio_id, :integer

    add_column :profiles, :edificio_anyo, :string, :limit => 4
    add_column :profiles, :edificio_periodo, :string, :limit => 32

    add_column :profiles, :vivienda_tipo_edificio, :string, :limit => 32
    add_column :profiles, :vivienda_num_plantas, :integer
    add_column :profiles, :vivienda_planta, :string
    add_column :profiles, :vivienda_estancias, :integer
    add_column :profiles, :vivienda_servicios, :integer
    add_column :profiles, :vivienda_tejado, :string
    add_column :profiles, :vivienda_superficie, :float

    Profile::VIVIENDA_REFORMAS.each do |reforma|
      add_column :profiles, "vivienda_#{reforma}", :boolean
    end

    add_column :profiles, :vivienda_reforma_ultima, :string, :limit => 32
    
  end

  def self.down
    remove_column :profiles, :provincia_id
    remove_column :profiles, :municipio_id

    remove_column :profiles, :edificio_anyo, :string
    remove_column :profiles, :edificio_periodo, :string

    remove_column :profiles, :vivienda_tipo_edificio
    remove_column :profiles, :vivienda_num_plantas
    remove_column :profiles, :vivienda_planta
    remove_column :profiles, :vivienda_estancias
    remove_column :profiles, :vivienda_servicios
    remove_column :profiles, :vivienda_tejado
    remove_column :profiles, :vivienda_superficie

    Profile::VIVIENDA_REFORMAS.each do |reforma|
      remove_column :profiles, "vivienda_#{reforma}"
    end
    remove_column :profiles, :vivienda_reforma_ultima

  end
end
