class WelcomeController < ApplicationController
  def index
    @services = Service.all.sort_by{ |a| a[:id] }[0..8]
  end
end
