class User < ActiveRecord::Base
  attr_accessible :name, :email, :roll_no, :age, :dept
  validates :name, :email, :presence => true
  validates_length_of :name,:email, :minimum => 2
end
