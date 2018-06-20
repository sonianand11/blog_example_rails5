class Post < ApplicationRecord

  belongs_to :user

  has_one_attached :image
  # has_many_attached :image

  validates_presence_of :title, :body

  def image_url
    image.attached? ? image : "/assets/default.png"
  end
end
