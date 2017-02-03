class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_renderer

  def root
    @footer_bg = "bg-white"
    @homepage = Client.entries(content_type: "homepage").first
    @banner_image = @homepage.fields[:bannerImages].sample
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
    @blog_post = Client.entries(content_type: "blogPost").first
  end

  def styleguide
    @social = Client.entries(content_type: "componentSocial").first
    @testimonials = Client.entries(content_type: "testimonial")
  end

  def clear_cache
    Rails.cache.clear
    render nothing: true, status: :ok
  end

  private

  def load_renderer
    @renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end

