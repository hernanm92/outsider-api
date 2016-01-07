class User < ActiveRecord::Base

  validates :alias, presence: true, uniqueness: true, length: { in: 5..15 }
  validates :name, presence: true, length: { in: 5..30 }
  validates :password, presence: true, length: { in: 5..30 }
  #validates :private, presence: true

  def self.find_by!(params)
    params[:alias] = params.delete(:id) if params[:id]
    super params
  end
end
