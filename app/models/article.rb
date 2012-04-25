class Article < ActiveRecord::Base
  attr_accessible :category_id, :content, :description, :publish, :source, :title
  validates :title, presence: true
  
  belongs_to :category
end
