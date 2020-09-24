Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, ENV['GOOGLE_KEY'], ENV['GOOLE_SECRET']
end