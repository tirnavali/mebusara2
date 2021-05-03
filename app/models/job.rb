class Job < ApplicationRecord
    has_and_belongs_to_many :mps

    def to_s
        self.name
    end
end
