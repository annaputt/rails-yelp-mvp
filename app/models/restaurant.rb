class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(indian italian phillipino french belgian) }

end
