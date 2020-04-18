class Election < ApplicationRecord
	belongs_to :mp
    belongs_to :period
end
