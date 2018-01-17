class WelcomeController < ApplicationController
  def index
    @prices = Price.all
  end
end
