class Profile < ActiveRecord::Base
  belongs_to :user

  SERVICES = %w(calef aire agua)
  SOURCES = %w(electr gasnat gasoleo gasbutprop solar madera otros)

end
