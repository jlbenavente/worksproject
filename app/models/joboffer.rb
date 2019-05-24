class Joboffer < ApplicationRecord
  belongs_to :user
  has_one :conversation
  belongs_to :location
  belongs_to :skill

  has_one :agreement
  has_many :user, through: :comment
  has_many :comment
end
