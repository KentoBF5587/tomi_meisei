class Agitator < ApplicationRecord
  validates :three_things, presence: true, length: { maximum: 17 }
  validates :gender, presence: true, length: { maximum: 7 }
  validates :common_name, presence: true, length: { maximum: 7 }
  validates :name, presence: true, length: { maximum: 20 }
  validates :when_he_said, presence: true, length: { maximum: 10 }
  validates :what_people_do, presence: true, length: { maximum: 10 }
  validates :treasure, presence: true, length: { maximum: 7 }
  validates :place, presence: true, length: { maximum: 10 }
  validates :where_they_go, presence: true, length: { maximum: 17 }
  validates :epic_name, presence: true, length: { maximum: 10 }

  belongs_to :user
end
