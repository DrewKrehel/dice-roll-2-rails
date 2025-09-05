class HomeController < ApplicationController
  def page
    render ({ :template => "dice_templates/homepage1"})
  end
end
