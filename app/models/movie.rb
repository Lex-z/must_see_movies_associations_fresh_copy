class Movie < ActiveRecord::Base
  validates :director_id, :presence => true
  validates :title, :presence => true
end
