class Project < ApplicationRecord
	has_many :time_entries  #plural version of table, auto applied via Rails
end

