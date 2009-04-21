class CreateProvincias < ActiveRecord::Migration
  def self.up
    create_table :provincias do |t|
      t.string :name
    end

    file_path = File.join RAILS_ROOT, 'db', 'provincias.csv'
    File.read(file_path).each do |line|
      row = line.split(', ')
      Provincia.create(:id => row[0].to_i, :name => row[1].chop)
    end

  end

  def self.down
    drop_table :provincias
  end

end
