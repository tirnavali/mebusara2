class Election < ApplicationRecord
	belongs_to :mp
    belongs_to :period
    belongs_to :party
    
end
