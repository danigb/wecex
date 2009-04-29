class ProfileEquipamiento < ActiveRecord::Migration
  def self.up
    Profile::EQUIP_SERVICIOS.each do |serv|
      Profile::EQUIP_FUENTES.each do |source|
        add_column :profiles, "equip_fuentes_#{serv}_#{source}", :boolean
      end
    end

    add_column :profiles, :equip_agua_caliente, :string, :limit => 3
    add_column :profiles, :equip_agua_tipo, :string, :limit => 8
    add_column :profiles, :equip_agua_solar, :string, :limit => 3
    add_column :profiles, :equip_agua_edad, :integer, :limit => 3
    add_column :profiles, :equip_agua_caldera_tipo, :string, :limit => 8
    add_column :profiles, :equip_agua_caldera_acumulacion, :string, :limit => 3

    add_column :profiles, :equip_calefaccion, :string, :limit => 3
    add_column :profiles, :equip_calefaccion_tipo, :string, :limit => 8
    Profile::EQUIP_DONDE.each do |donde|
      add_column :profiles, "equip_calefaccion_donde_#{donde}", :string, :limit => 8
    end
    add_column :profiles, :equip_calefaccion_edad, :integer, :limit => 3
    add_column :profiles, :equip_calefaccion_misma, :string, :limit => 3
    add_column :profiles, :equip_calefaccion_caldera_tipo, :string, :limit => 8
    add_column :profiles, :equip_calefaccion_bomba_tipo, :string, :limit => 8


    add_column :profiles, :equip_ac, :string, :limit => 3
    Profile::EQUIP_DONDE.each do |donde|
      add_column :profiles, "equip_ac_donde_#{donde}", :string, :limit => 8
    end
    add_column :profiles, :equip_ac_tipo, :string, :limit => 8
    add_column :profiles, :equip_ac_edad, :integer, :limit => 3

    Profile::EQUIP_DISPOSITIVOS.each do |disp|
      add_column :profiles, "equip_disp_tiene_#{disp}", :integer
    end

    Profile::EQUIP_ILUMINACION.each do |disp|
      add_column :profiles, "equip_ilum_tiene_#{disp}", :integer
    end
  end
  

  def self.down
    Profile::EQUIP_SERVICIOS.each do |serv|
      Profile::EQUIP_FUENTES.each do |source|
        remove_column :profiles, "equip_fuentes_#{serv}_#{source}"
      end
    end

    remove_column :profiles, :equip_agua_caliente
    remove_column :profiles, :equip_agua_tipo
    remove_column :profiles, :equip_agua_solar
    remove_column :profiles, :equip_agua_edad
    remove_column :profiles, :equip_agua_caldera_tipo
    remove_column :profiles, :equip_agua_caldera_acumulacion

    remove_column :profiles, :equip_calefaccion
    remove_column :profiles, :equip_calefaccion_tipo
    Profile::EQUIP_DONDE.each do |donde|
      remove_column :profiles, "equip_calefaccion_donde_#{donde}", :string, :limit => 8
    end
    remove_column :profiles, :equip_calefaccion_edad
    remove_column :profiles, :equip_calefaccion_misma
    remove_column :profiles, :equip_calefaccion_caldera_tipo
    remove_column :profiles, :equip_calefaccion_bomba_tipo

    remove_column :profiles, :equip_ac, :string
    Profile::EQUIP_DONDE.each do |donde|
      remove_column :profiles, "equip_ac_donde_#{donde}", :string, :limit => 8
    end
    remove_column :profiles, :equip_ac_tipo
    remove_column :profiles, :equip_ac_edad

    Profile::EQUIP_DISPOSITIVOS.each do |disp|
      remove_column :profiles, "equip_disp_tiene_#{disp}"
    end

    Profile::EQUIP_ILUMINACION.each do |disp|
      remove_column :profiles, "equip_ilum_tiene_#{disp}"
    end


  end
end