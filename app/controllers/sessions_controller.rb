class SessionsController < ApplicationController

    protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
    #porque tengo que poner esto? validacion de rails para evitar CSRF attacks

    def login
      if (login_params[:username] ==  'admin' && login_params[:password] == 'secret')
          render json: {message: "ok"}, :status => 202
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
