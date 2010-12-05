class Promotion < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :description, :debut, :fin, :street, :locality,:region,:postal_code,:country,:photo
  validates_presence_of :user_id
  acts_as_geocodable :units => :kilometers
  has_attached_file :photo, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :ftp,
                    :path => "/:attachment/:attachment/:id/:style/:filename",
                    :url => "ftp://luchog:gonzales@ftp.drivehq.com/:attachment/:attachment/:id/:style/:filename"
   
  
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
      "<key>"+"photo"+"</key>"+
      "<string>"+self.photo.url+"</string>"+
  "</dict>"
  end
  
end
