class Sport < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { in: 5..500 }

end
