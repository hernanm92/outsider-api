class Photo < ActiveRecord::Base
  def self.find_by!(params)
    params[:id] = params.delete(:id) if params[:id]
    super params
  end
end
