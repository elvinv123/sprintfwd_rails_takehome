class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :members, -> {distinct}, dependent: :destroy
end
