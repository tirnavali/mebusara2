class Party < ApplicationRecord
	has_many :elections

	has_many :mps, :through => :elections
	has_many :periods, :through => :elections

	has_and_belongs_to_many :mps
end
