class Course < ApplicationRecord
    has_many :reviews
    belongs_to :college

    def average_rating 
        
        reviews.average(:rating).round(2)
    end
end