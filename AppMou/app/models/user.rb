class User < ActiveRecord::Base
  attr_accessible :name, :email, :roll_no, :age, :dept
  validates :name, :email, :presence => true
  validates_length_of :name,:email, :minimum => 2
  has_many :posts
  before_create do |user|
  user.name = user.name.capitalize
  end
end
