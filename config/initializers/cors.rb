
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:8080',
            /\Ahttps:\/\/respects-3b626\.firebaseapp\.com(:\d+)?\z/

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true,
      expose: ['Authorization', 'Access-Control-Allow-Origin', 'access-token', 'uid']
  end
end
