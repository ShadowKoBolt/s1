Rails.application.routes.draw do
  root to: "application#root"
  get "styleguide" => "application#styleguide"
  get "testimonials" => "testimonials#index"
  get "contact" => "contact#index"
  post "contact" => "contact#create"
  get "blog/:id" => "blog#show", as: "blog_post"
end
