class ProfileCostumbresOpinion < ActiveRecord::Migration
  def self.up
    add_column :profiles, :costumbres_personas, :integer
    add_column :profiles, :costumbres_horas, :integer
    add_column :profiles, :opinion, :text
  end

  def self.down
    remove_column :profiles, :costumbres_personas
    remove_column :profiles, :costumbres_horas
    remove_column :profiles, :opinion
  end
end
