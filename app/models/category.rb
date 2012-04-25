class Category < ActiveRecord::Base
  attr_accessible :display, :icon, :name, :priority
  validates :name, presence: true
  
  has_many :articles
end
