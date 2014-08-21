class PagesController < ApplicationController
  def home
    @title ="Web design Singapore. Happyfellas, the best website designers in Singapore."
    @metadesc= "Best web designers in Singapore. Affordable web design for e-commerce stores, Blog shops, comapny websites. Responisve web design at it's best."
    @metakeywords = "Web design Singapore, web designers singapore, web designers, web design, wordpress web design, wordpress template, magento design customisation singapore"
    @potentialclient = Potentialclient.new
  end
  
  def work
    @title ="Web design and web development portfolio Singapore - Happyfellas web studio"
    @metadesc= "Work samples of web designers from happyfellas.com. We have worked on various technologies like Magento, Wordpress, Joomla, Ruby on Rails etc."
    @metakeywords = "Web design portfolio Singapore, web designers portofolio singapore, web designers portfolio, web design portfolio, wordpress web design work, wordpress template, magento design customisation case-study singapore"
  end
  
  def webdesign
  end
  
  def webdevelopment
  end
  
  def mobileappdevelopment
  end
  
  def seo
  end
  
  def socialmediamanagement
  end
  
  def googleanalytics
  end
  
end
