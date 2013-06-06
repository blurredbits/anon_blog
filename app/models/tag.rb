class Tag < ActiveRecord::Base
  has_many :markers
  has_many :posts, :through => :markers
  # Remember to create a migration!
end
