class Movie < ActiveRecord::Base
  validates :director_id, presence: true
  validates :title, presence: true, uniqueness: { scope: :year,
    message: ": only one title per year" }
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1850, less_than_or_equal_to: 2050}
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800}
end
