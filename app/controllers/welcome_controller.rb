class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to promotions_path
    else
      @promotions = Promotion.first(10)
    end
  end
  
  

end
