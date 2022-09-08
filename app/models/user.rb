class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable
  has_many :courses, :dependent => :destroy
  has_many :experiences, :dependent => :destroy
  CITIES = ["Lisbon", "London", "New York", "Remote"].freeze

  has_many :likeables, dependent: :destroy
  has_many :liked_jobs, through: :likeables, source: :job

    # check if it works moving this to the user controller
    def liked?(job)
        liked_jobs.include?(job)
    end
    
    def like(job)
        if liked_jobs.include?(job)
            liked_jobs.destroy(job)
        else
            liked_jobs << job
        end
    end
end
