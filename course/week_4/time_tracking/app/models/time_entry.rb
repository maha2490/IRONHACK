class TimeEntry < ApplicationRecord
	belongs_to :project
	validates_associated :project
	validates :hours, :minutes, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	validates :date, presence: true
end

