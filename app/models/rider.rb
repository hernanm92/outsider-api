class Rider < ActiveRecord::Base

  def self.find_by!(params)
    params[:alias] = params.delete(:id) if params[:id]
    super params
  end
end
