class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :member_projects, dependent: :destroy
  has_many :members, -> {distinct}, through: :member_projects, source: :member
end
