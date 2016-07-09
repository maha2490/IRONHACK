class Concert < ApplicationRecord
	validates :artist, :venue, :city_state, :price, :date, :description, presence: true
end
