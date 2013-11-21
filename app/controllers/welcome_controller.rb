class WelcomeController < ApplicationController
  def registered
  end
  
  def index
    @clubs = Club.all
  end
  
end
