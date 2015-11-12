class Director < ActiveRecord::Base
validates :name, presence: true, uniqueness: { scope: :dob,
    message: ": only one director per dob" }
end
