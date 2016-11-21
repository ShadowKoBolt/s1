class TestimonialsController < ApplicationController
  def index
    @testimonials = Client.entries(content_type: "testimonial")
  end
end
