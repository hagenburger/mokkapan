class Event < ActiveRecord::Base
  
  validates_presence_of :title_en
  validates_presence_of :title_de
  validates_presence_of :date
  
  def title # redirects to locale (e.g. feldname_de)
    i2n(__method__)
  end
  
  def content # redirects to locale (e.g. feldname_de)
    i2n(__method__)
  end
end
