class Artwork < ActiveRecord::Base
  attr_accessible :artist, :info, :title, :image
  has_attached_file :image, styles: {thumb: '100x100>'}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_many :comments
end
