Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
  get "/", { :controller => "home", :action => "page" }
  get "/dice/:number/:sides", { :controller => "dice", :action => "roll" }
end
