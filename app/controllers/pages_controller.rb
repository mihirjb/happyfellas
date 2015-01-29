class PagesController < ApplicationController
  def home
    @title ="Web design Gujarat India. Happyfellas, the best website designers in Gujarat India."
    @metadesc= "Best web designers in Gujarat India. Affordable web design for e-commerce stores, Blog shops, comapny websites. Responisve web design at it's best."
    @metakeywords = "Web design Gujarat India, web designers Gujarat India, web designers, web design, wordpress web design, wordpress template, magento design customisation Gujarat India"
    @potentialclient = Potentialclient.new
  end
  
  def work
    @title ="Web design and web development portfolio Gujarat India - Happyfellas web studio"
    @metadesc= "Work samples of web designers from happyfellas.com. We have worked on various technologies like Magento, Wordpress, Joomla, Ruby on Rails etc."
    @metakeywords = "Web design portfolio Gujarat India, web designers portofolio Gujarat India, web designers portfolio, web design portfolio, wordpress web design work, wordpress template, magento design customisation case-study Gujarat India"
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
