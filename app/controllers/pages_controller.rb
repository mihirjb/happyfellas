class PagesController < ApplicationController
  def home
    @potentialclient = Potentialclient.new
  end
  
  def work
  end
end
