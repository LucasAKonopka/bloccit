class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  has_one :rating, as: :rateable
  
  
  scope :visible_to, -> (user){ user ? all : publically_viewable }
  scope :publically_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
 
  
end
