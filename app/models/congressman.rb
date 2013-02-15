require_relative '../../db/config'

class Legislator < ActiveRecord::Base
	attr_accessible :type

	validates :facebook_id, :uniqueness => true
	validates :phone, :numericality => { :less_than_or_equal_to => 1 }
end