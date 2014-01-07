class Merchant < ActiveRecord::Base
  attr_accessible :tid, :mid

  validates :tid, presence: true
  validates :mid, presence: true
  
end
