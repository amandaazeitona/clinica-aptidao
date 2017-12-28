class WelcomeController < ApplicationController
  def index
    @sections = Section.all
  end
end
