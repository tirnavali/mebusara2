class Period < ApplicationRecord
	has_many :elections
	has_many :mps, :through => :elections
end
