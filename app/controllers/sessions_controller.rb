class SessionsController < ApplicationController

    def login
      if (login_params[:username] ==  'admin' && login_params[:password] == 'secret')
          render json: {message: "ok"}, :status => 200
      else
          render json: {message: "Wrong"}, :status => 401
      end
    end

    private

    def login_params
      {
          username: params.require(:username),
          password: params.require(:password)
      }
    end
end
