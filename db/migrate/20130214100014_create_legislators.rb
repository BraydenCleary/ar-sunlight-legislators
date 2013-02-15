require_relative '../config.rb'
require_relative '../../app/models/legislator.rb'

class CreateLegislators < ActiveRecord::Migration
	def change
		create_table :legislators do |t|
			t.type 					:text
			t.string 				:first_naem
			t.string 			:middle_name
			t.string 				:last_name
			t.string 			:name_suffix
			t.string 					:nickname
			t.string 						:party
			t.string 						:state
			t.boolean 				:in_office
			t.string 						:gender
			t.string 						:phone
			t.string								:fax
			t.string						:website
			t.string						:weform
			t.string 	:congress_office
			t.string 			:bioguide_id
			t.string 			:votesmart_id
			t.string 						:fec_id
			t.string 			:govtrack_id
			t.string 						:crp_id
			t.string 				:twitter_id
			t.string :congresspedia_url
			t.string 			:youtube_url
			t.string 			:facebook_id
			t.string 			:official_rss
			t.string 				:birthdate
			t.string      :senate_class
			t.string 					:district
		end
	end
end