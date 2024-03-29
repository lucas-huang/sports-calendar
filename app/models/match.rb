class Match < ApplicationRecord
	belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id'
  	belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id'
  	validates_presence_of :home_team_id, :away_team_id, :time, :location
	def start_time
		self.time
	end
end
