class Recruitiment < ApplicationRecord
  belongs_to :users
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :play_style, presence: true, lenth: { maximum: 100 }
  validates :used_vc, presence: true, length: { maximum: 140 }
  validates :one_word, presence: true, length: { maximum: 140 }
  
end
