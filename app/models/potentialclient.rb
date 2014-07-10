class Potentialclient < ActiveRecord::Base
  
  
  validates :email, :presence => {:message => 'Email cannot be blank, Mail not sent'}
   validates :fullname, :presence => {:message => 'Full Name cannot be blank, Mail not sent'}
   validates :fullname, :length => {:in => 6..60}
  
  
end
