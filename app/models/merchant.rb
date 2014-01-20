class Merchant < ActiveRecord::Base
	attr_accessible :complaint, :email, :mid, :mobile, :tick, :tid

	validates :mid,       presence: true, length: { within: (7..9) }
	validates :tid,       presence: true, length: { within: (7..9) }
	VALID_MOBILE_REGEX = /\A\d{10}\z/
	validates :mobile,    presence: true, length: { is:10}, format: { with: VALID_MOBILE_REGEX }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,     format: { with: VALID_EMAIL_REGEX }
	validates :complaint, presence: true
	validates :tick,      presence: true, uniqueness: true

end
