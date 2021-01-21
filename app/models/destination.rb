class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts


  def full_name
    "#{name}, #{country}"
  end
end
