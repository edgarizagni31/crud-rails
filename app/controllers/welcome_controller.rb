class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user

    p user 
    render(:layout => "layouts/dashboard")
  end
end
