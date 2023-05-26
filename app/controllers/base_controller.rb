class BaseController < ApplicationController
  
  def home
    render({:template => "base_templates/homepage.html.erb"})
  end

  def result
    cookies.store(:lod, params.fetch("length_days"))

    render({:template => "base_templates/gptresult.html.erb"})
  end

  def itinerary
    @lod=cookies.fetch(:lod)
    render({:template => "base_templates/itinerary.html.erb"})
  end

end
