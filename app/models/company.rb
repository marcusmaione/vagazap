class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  FUNCTIONALAREA = ["Accounting & finance", "Human resources", "Operations", "Sales & marketing", "Technology"].freeze
  COMPANYSECTORS = ["Banking", "Education", "Health", "Law", "Retail", "Technology"].freeze
  has_many :jobs, :dependent => :destroy
end
