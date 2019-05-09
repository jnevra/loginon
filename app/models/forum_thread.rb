class ForumThread < ApplicationRecord
  belongs_to :user
  has_many :forum_posts

  validates :title, presence:true
  validates :content, presence:true

  def sticky?
    sticky_order !=100
  end
end
