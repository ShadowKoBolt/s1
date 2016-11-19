class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def root
    @homepage = Client.entries(content_type: "homepage").first
    @banner_image = @homepage.banner_images.sample
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
  end

  def styleguide
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
  end
end

