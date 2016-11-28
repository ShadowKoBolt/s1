class LocationController < ApplicationController
  def index
    @page = Client.entries(content_type: "findingUsPage").first
  end
end
