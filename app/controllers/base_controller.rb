class BaseController < ApplicationController
  def home
    render({:template => "base_templates/homepage.html.erb"})
  end

  def result
    render({:template => "base_templates/gptresult.html.erb"})
  end
end
