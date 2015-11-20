class Rating < ActiveRecord::Base
  enum severity: [ :PG, :PG13, :R]
  belongs_to :rateable, polymorphic: true 
  has_many :topics, as: :rateable
  has_many :posts, as: :rateable
  
  
  def self.update_rating(rating_string)
    new_string = 'PG'
    unless rating_string != 'PG' || rating_string != 'PG13' || rating_string != 'R'
      new_string = rating_string
    end
   new_string
  end
end
