class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def root
    @homepage = Client.entries(content_type: "homepage").first
    @banner_image = @homepage.banner_images.sample
  end
end
