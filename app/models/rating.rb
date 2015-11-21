class Rating < ActiveRecord::Base
  
  belongs_to :rateable, polymorphic: true 
  has_many :topics, as: :rateable
  has_many :posts, as: :rateable
  
  
  def self.update_rating(rating_string)
     Rating.update_attribute(:severity, rating_string)
  end
  
  enum severity: [ :PG, :PG13, :R]
end
