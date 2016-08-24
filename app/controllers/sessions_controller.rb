class SessionsController < ApplicationController
  def callback
    binding.pry
    session[:tumblr] = {
        token: request.env['omniauth.auth']['credentials']['token'],
        secret: request.env['omniauth.auth']['credentials']['secret']
    }
    redirect_to '/'
  end
end