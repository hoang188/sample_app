class Category < ActiveRecord::Base
  attr_accessible :display, :icon, :name, :priority
  validates :name, presence: true
  default_scope order: 'Category.priority ASC'
end
