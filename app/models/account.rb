class Account < ActiveRecord::Base
  has_many :users
  has_one :subscription

  before_validation { |account| account.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |account| account.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }


end

