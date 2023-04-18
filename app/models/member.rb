class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :team
  has_many :member_projects, dependent: :destroy
  has_many :projects, -> {distinct}, through: :member_projects, source: :project
end
