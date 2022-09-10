class Course < ApplicationRecord
  DEGREELEVELS = ["Bacherlor's", "Master's", "Doctorate"].freeze
  belongs_to :user
end
