class ProfileDetails < ActiveRecord::Migration
  def self.up

    add_column :profiles, :provincia_id, :integer
    add_column :profiles, :municipio_id, :integer

    add_column :profiles, :edificio_anyo, :string, :limit => 4
    add_column :profiles, :edificio_periodo, :string, :limit => 32

    add_column :profiles, :vivienda_tipo_edificio, :string
    add_column :profiles, :vivienda_num_plantas, :integer
    add_column :profiles, :vivienda_planta, :string
    add_column :profiles, :vivienda_estancias, :integer
    add_column :profiles, :vivienda_servicios, :integer
    add_column :profiles, :vivienda_tejado, :string
    add_column :profiles, :vivienda_superficie, :float

    Profile::SERVICES.each do |serv|
      Profile::SOURCES.each do |source|
        add_column :profiles, "equip_fuentes_#{serv}_#{source}", :boolean
      end
    end
    
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

    Profile::SERVICES.each do |serv|
      Profile::SOURCES.each do |source|
        remove_column :profiles, "equip_fuentes_#{serv}_#{source}"
      end
    end

  end
end
