Client = Contentful::Client.new(
  access_token: ENV["contentful_access_token"],
  space: ENV["contentful_space"],
  api_url: ENV["contentful_api_url"],
  dynamic_entries: :auto
)
