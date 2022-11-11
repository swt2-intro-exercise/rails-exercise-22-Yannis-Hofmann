class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  has_and_belongs_to_many :authors
  scope :written_in, ->(filter_year) { where("year = ?", filter_year) if filter_year.present?}
end
