class CreateLegislator < ActiveRecord::Migration
	def change
		create_table :legislators do |c|
			c.first_name 				:string
			c.middle_name 			:string
			c.last_name 				:string
			c.name_suffix 			:string
			c.nickname 					:string
			c.party 						:string
			c.state 						:string
			c.in_office 				:boolean
			c.gender 						:string
			c.phone 						:string
			c.fax								:string
			c.website						:string
			c.webform						:string
			c.congress_office 	:string
			c.bioguide_id 			:string
			c.votesmart_id 			:string
			c.fec_id 						:string
			c.govtrack_id 			:string
			c.crp_id 						:string
			c.twitter_id 				:string
			c.congresspedia_url :string
			c.youtube_url 			:string
			c.facebook_id 			:string
			c.official_rss 			:string
			c.birthdate 				:string
			c.senate_class      :string
			c.district 					:string
		end
	end
end