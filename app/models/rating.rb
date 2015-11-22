class Rating < ActiveRecord::Base
  
  belongs_to :rateable, polymorphic: true 
  has_many :topics, as: :rateable
  has_many :posts, as: :rateable
  
  
  def self.update_rating(rating_string)
    
    if rating_string == '0'
      rating = 0
    elsif rating_string == '1'
      rating = 1
    else
      rating = 2
    end
    new_rating = Rating.find_or_create_by(severity: rating)
    new_rating
  end
  
  enum severity: [ :PG, :PG13, :R]
end
