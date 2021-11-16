class Course < ApplicationRecord
    has_many :reviews
    belongs_to :college
end