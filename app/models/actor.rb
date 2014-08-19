class Actor < ActiveRecord::Base
	has_and_belongs_to_many :titles
	def fullname
		return firstname + ' ' + lastname
	end	

end
