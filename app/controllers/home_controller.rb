class HomeController < ApplicationController
  def index
    redirect_to '/auth/tumblr' if session[:tumblr].blank?
  end

  def followers
    client = Tumblr::Client.new({
                                    consumer_key: OMNIAUTH_CONFIG['tumblr_id'],
                                    consumer_secret: OMNIAUTH_CONFIG['tumblr_secret'],
                                    oauth_token: session[:tumblr]['token'],
                                    oauth_token_secret: session[:tumblr]['secret']
                                })

    response = client.followers "#{params[:user]}.tumblr.com"
    @followers_count = response['total_users']
  end
end