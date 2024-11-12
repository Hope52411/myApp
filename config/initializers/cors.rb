# config/initializers/cors.rb

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# You can customize the origins that can access your API here.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Replace "*" with specific domains or IP addresses that you want to allow.
    origins '*'  # For now, allowing all origins. You can replace '*' with specific domains like ['http://example.com'] if needed.

    # Define the resources and actions that can be performed via cross-origin requests.
    resource '*',  # This allows access to all resources.
      headers: :any,  # Allows any headers in the request.
      methods: [:get, :post, :put, :patch, :delete, :options, :head]  # These are the allowed HTTP methods.
  end
end
