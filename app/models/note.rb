class Note < ActiveRecord::Base
  attr_accessible :content, :user
  validates_presence_of :content
end