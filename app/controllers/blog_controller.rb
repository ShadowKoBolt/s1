class BlogController < ApplicationController
  def show
    @blog_post = Client.entries(content_type: "blogPost", "fields.slug": params[:id]).first
  end
end
