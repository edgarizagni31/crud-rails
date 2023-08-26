class AboutController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"


  def index 
    @names = ["edgar ochoa", "heydi  morocho", "maicol guevara"]
  end 
end
