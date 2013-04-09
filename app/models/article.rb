class Article < ActiveRecord::Base
  attr_accessible :category, :description, :tag_id, :id, :title, :url
  has_and_belongs_to_many :tags
  belongs_to :category
  before_create :set_url


  private

  def set_url
    self.url = self.title.downcase.gsub ' ', '-'
  end

end
