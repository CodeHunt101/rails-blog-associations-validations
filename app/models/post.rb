class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates :name, :content, presence: true

  def tag_names
    self.tags.map{|t| t.name}
  end
end
