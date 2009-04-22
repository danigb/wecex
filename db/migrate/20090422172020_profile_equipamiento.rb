class ProfileEquipamiento < ActiveRecord::Migration
  def self.up
    Profile::EQUIP_SERVICIOS.each do |serv|
      Profile::EQUIP_FUENTES.each do |source|
        add_column :profiles, "equip_fuentes_#{serv}_#{source}", :boolean
      end
    end

    add_column :profiles, :equip_agua_caliente, :boolean
    add_column :profiles, :equip_agua_tipo, :string, :limit => 8
    add_column :profiles, :equip_agua_dispositivo, :string, :limit => 8
  end

  def self.down
    Profile::EQUIP_SERVICIOS.each do |serv|
      Profile::EQUIP_FUENTES.each do |source|
        remove_column :profiles, "equip_fuentes_#{serv}_#{source}"
      end
    end

    remove_column :profiles, :equip_agua_caliente
    remove_column :profiles, :equip_agua_tipo
    remove_column :profiles, :equip_agua_dispositivo
  end
end