class Video < ActiveRecord::Base
	after_initialize :set_defaults

	private

	def set_defaults
		self.views ||= 0
		self.points ||= 0.0 #cuando se haga un update va a haber que validar que cada uno vote una vez (y hacer el promedio)
	end
end
