class Profile < ActiveRecord::Base
  belongs_to :user

  attr_accessor :localidad
end
