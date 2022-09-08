class Job < ApplicationRecord
  JOBPOSITIONS = ["Intern", "Analyst", "Manager", "Director"].freeze
  JOBLEVELS = ["Junior", "Senior"].freeze
  belongs_to :company
  has_many :likeables, dependent: :destroy
  has_many :likes, through: :likeables, source: :user
end
