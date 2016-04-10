class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_many :matters 
  belongs_to :user
end
