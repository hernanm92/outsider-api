class Comment < ActiveRecord::Base

  validates :video, presence: true
  validates :owner, presence: true
  validates :description, presence: true, length: { in: 5..500 }

	after_initialize :set_defaults

	private

	def set_defaults
		self.points ||= 0.0
	end
end
