class Project < ApplicationRecord
	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /[a-zA-Z ]/}
	has_many :time_entries  #plural version of table, auto applied via Rails
end


