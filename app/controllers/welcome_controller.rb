class WelcomeController < ApplicationController
  def index
    @promotions = Promotion.first(10)
  end

end
