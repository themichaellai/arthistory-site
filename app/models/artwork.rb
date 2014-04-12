class Artwork < ActiveRecord::Base
  attr_accessible :artist, :info, :title

  has_many :comments
end
