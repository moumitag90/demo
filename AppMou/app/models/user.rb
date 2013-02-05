class User < ActiveRecord::Base
  attr_accessible :name, :email, :roll_no, :age, :dept
  validates :name, :presence => true
  has_many :posts
  before_create do |user|
  user.name = user.name.capitalize
  end
end
