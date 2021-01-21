class Post < ApplicationRecord
  belongs_to :destination
  belongs_to :blogger

  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  # validate :content_long_enough

  def content_long_enough
    if content.length < 100
      self.errors.add(:content, "its too short!!!")
    end
  end
end
