class Tag < ActiveRecord::Base

  attr_accessible :name, :article_id, :id
  has_and_belongs_to_many :articles
end
