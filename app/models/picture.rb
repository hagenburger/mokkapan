class Picture < ActiveRecord::Base
  
  has_attached_file :img, :styles => { :max => "1024x768>", :thumb => "100x100>" }
  
  validates_presence_of :title_en
  validates_presence_of :title_de
  validates_attachment_presence :img
  
  def title # redirects to locale (e.g. feldname_de)
    i2n(__method__)
  end
end
