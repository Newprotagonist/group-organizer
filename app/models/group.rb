class Group < ApplicationRecord
  belongs_to :user
  has_many :group_members, dependent: :destroy
  validates :name, presence: true
  has_many :events, dependent: :destroy
end
