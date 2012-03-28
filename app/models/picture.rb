class Picture < ActiveRecord::Base
  validates :pic_url => :presence
end
