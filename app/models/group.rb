class Group < ApplicationRecord
  belongs_to :user
  has_many :group_members
  validates :name, presence: true
end
