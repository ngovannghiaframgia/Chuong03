class Micropost < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.micropost.max_content}
  validate  :picture_size

  scope :micropost_desc, -> {order(created_at: :desc)}

  private
  def picture_size
    if picture.size > Settings.micropost.size_picture.megabytes
      errors.add(:picture, t(".should_5MB"))
    end
  end
end
