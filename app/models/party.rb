class Party < ApplicationRecord
	has_many :elections
	has_many :mps, :through => :elections
	has_many :periods, :through => :elections

end
