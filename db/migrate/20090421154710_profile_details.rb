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

    servicios = %w(calef aire agua)
    fuentes = %w(electr gasnat gasoleo gasbutprop solar madera otros)
    servicios.each do |serv|
      fuentes.each do |source|
        add_column :profiles, "equip_fuentes_#{serv}_#{source}", :boolean
      end
    end
    
  end

  def self.down
  end
end
