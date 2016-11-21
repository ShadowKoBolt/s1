Rails.application.routes.draw do
  root to: "application#root"
  get "styleguide" => "application#styleguide"
  get "testimonials" => "testimonials#index"
end
