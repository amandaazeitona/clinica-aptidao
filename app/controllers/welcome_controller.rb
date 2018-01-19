class WelcomeController < ApplicationController
  def index
    @prices = Service.all
  end
end
