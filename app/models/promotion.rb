class Promotion < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :description, :debut, :fin, :street, :locality,:region,:postal_code,:country
  validates_presence_of :user_id
  acts_as_geocodable :units => :kilometers
  
  def adresse
    [street,postal_code,locality,country].join(' ')
  end
  
  def to_plist(envelope=true)
    Plist::Emit.dump(self,envelope)
  end
  
  def to_plist_node
   "<dict>"+
      "<key>"+"id"+"</key>"+
      "<string>"+self.id.to_s+"</string>"+
      "<key>"+"description"+"</key>"+
      "<string>"+self.description+"</string>"+
      "<key>"+"adresse"+"</key>"+
      "<string>"+self.adresse+"</string>"+
  "</dict>"
  end
  
end
