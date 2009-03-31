class User < ActiveRecord::Base
  include Clearance::App::Models::User

  has_one :profile
  has_one :report
  has_many :invoices
end