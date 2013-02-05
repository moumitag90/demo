class User < ActiveRecord::Base
  attr_accessible :user_name, :email, :roll_no, :age, :dept
  validates :user_name, :presence => true
  has_many :posts
  before_create do |user|
  user.user_name = user.user_name.capitalize
  end
end
