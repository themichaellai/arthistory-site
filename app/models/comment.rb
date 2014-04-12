class Comment < ActiveRecord::Base
  attr_accessible :artwork_id, :text

  belongs_to :artwork
end
