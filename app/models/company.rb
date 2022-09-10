class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  FUNCTIONALAREA = ["Finance", "Sales", "Technology"].freeze
  COMPANYSECTORS = ["Banking", "Retail", "Technology"].freeze
  has_many :jobs, :dependent => :destroy
end
