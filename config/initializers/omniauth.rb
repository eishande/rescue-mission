Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["LOGIN_KEY"], ENV["LOGIN_SECRET"]
end
