module ApplicationHelper
  def load_blog_post(id)
    Client.entries(content_type: "blogPost", "fields.slug": id).first
  end

  def load_blog_posts
    Client.entries(content_type: "blogPost")
  end

  def load_location_page
    Client.entries(content_type: "findingUsPage").first
  end

  def load_testimonials
    Client.entries(content_type: "testimonial")
  end

   def load_contact_page
    Client.entries(content_type: "contactPage").first
   end

   def load_footer
    Client.entries(content_type: "componentFooter").first
   end

   def load_basic_page(id)
    Client.entries(content_type: "basicPage", "fields.slug": id).first
   end
end
