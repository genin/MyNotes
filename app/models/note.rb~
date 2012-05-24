class Note < ActiveRecord::Base
  attr_accessible :content, :user
  validates_presence_of :content
  belongs_to :user
  self.per_page =2
  
  def as_json(opts={})
    { :user => self.user, :content => self.content }
  end

  def as_xml(opts={})
    { :user => self.user, :content => self.content }
  end
end
