OMNIAUTH_CONFIG = YAML.load_file('config/omniauth.yml')[Rails.env]
# binding.pry

# puts OMNIAUTH_CONFIG

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, OMNIAUTH_CONFIG['tumblr_id'], OMNIAUTH_CONFIG['tumblr_secret']
end