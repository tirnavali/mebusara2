class Party < ApplicationRecord
	has_and_belongs_to_many :mps
end
