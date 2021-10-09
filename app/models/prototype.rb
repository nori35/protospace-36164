class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  belongs_to :user
  validates :user_id, presence: true
  has_many :comments, dependent: :destroy

  has_one_attached :image
end
