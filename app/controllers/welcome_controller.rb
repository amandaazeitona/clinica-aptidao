class WelcomeController < ApplicationController
  def index
    @prices = Service.all.sort_by{ |a| a[:id] }
    @first = @prices[0].micro_services.drop(1)
    @second = @prices[1].micro_services.drop(1)
    @third = @prices[2].micro_services.drop(1)
    @fourth = @prices[3].micro_services.drop(1)
    @fifth = @prices[4].micro_services.drop(1)
    @sixth = @prices[5].micro_services.drop(1)
    @seventh = @prices[6].micro_services.drop(1)
    @eighth = @prices[7].micro_services.drop(1)
    @ninth = @prices[8].micro_services.drop(1)
  end
end
