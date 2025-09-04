class HomeController < ApplicationController
  def page
    render ({ :template => "dice_templates/homepage"})
  end
end
