class Restaurant < ApplicationRecord
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: category }
  validates :phone_number, presence: true
end
