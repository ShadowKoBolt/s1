Rails.application.routes.draw do
  root to: "application#root"
  get "styleguide" => "application#styleguide"
  get "testimonials" => "testimonials#index"
  get "contact" => "contact#index"
  post "contact" => "contact#create"
  get "how-to-find-us" => "location#index"
  get "blog" => "blog#index", as: "blog"
  get "blog/:id" => "blog#show", as: "blog_post"
end
