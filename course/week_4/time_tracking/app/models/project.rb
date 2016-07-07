class Project < ApplicationRecord
	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /[a-zA-Z ]/}
	has_many :time_entries  #plural version of table, auto applied via Rails

	def self.clean_old
		old_stuff = Project.where("created_at < ?", 1.week.ago) #find projects older than a week
		old_stuff.destroy_all
	end
end


