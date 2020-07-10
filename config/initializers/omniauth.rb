Rails.application.config.middleware.use OmniAuth::Builder do
  provider :telegram, 'fz_club_bot', '1274599453:AAHXub8KR-XIPLqVIzSEk8SZWDkFam-JiNs'
end
