class Post < ActiveRecord::Base
  has_many :markers
  has_many :tags, :through => :markers
  # Remember to create a migration!
end
