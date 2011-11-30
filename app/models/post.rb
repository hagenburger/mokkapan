class Post < ActiveRecord::Base
  
  validates_presence_of :title
  
  def to_param
    self.id.to_s << '-' << self.title
  end
   
end
