class CreateMunicipios < ActiveRecord::Migration
  def self.up
    create_table :municipios do |t|
      t.string :name
      t.references :provincia
    end

    file_path = File.join RAILS_ROOT, 'db', 'municipios.csv'
    File.read(file_path).each do |line|
      row = line.split(', ')
      Municipio.create(:id => row[0].to_i, :provincia_id => row[1].to_i, :name => row[2].chop)
    end
  end

  def self.down
    drop_table :municipios
  end
end
