OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1074269392594836'], ENV['45fbd431473d055e113f5d0a4cfcc6c1']
end