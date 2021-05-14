class Tvdinner < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :film_id, presence: true
  validates :recipe_ids, presence: true
end
