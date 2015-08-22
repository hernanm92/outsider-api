class Comment < ActiveRecord::Base
	after_initialize :set_defaults

	private

	def set_defaults
		self.points ||= 0.0
	end
end
