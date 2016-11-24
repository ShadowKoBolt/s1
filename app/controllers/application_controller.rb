class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_renderer
  before_action :load_footer

  def root
    @footer_bg = "bg-white"
    @homepage = Client.entries(content_type: "homepage").first
    @banner_image = @homepage.banner_images.sample
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
  end

  def styleguide
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
  end

  private

  def load_footer
    @footer = Client.entries(content_type: "componentFooter").first
  end

  def load_renderer
    @renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end

