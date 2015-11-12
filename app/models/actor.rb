class Actor < ActiveRecord::Base
validates :name, presence: true, uniqueness: { scope: :dob,
    message: ": only one actor per dob" }
end
