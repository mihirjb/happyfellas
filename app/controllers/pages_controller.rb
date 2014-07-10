class PagesController < ApplicationController
  def home
    @potentialclient = Potentialclient.new
  end
end
