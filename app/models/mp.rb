class Mp < ApplicationRecord
	has_many :elections
	has_many :periods, :through => :elections
	has_many :parties, :through => :elections


	def full_name
		"#{name}, #{name2} #{surname}"
	end

end
