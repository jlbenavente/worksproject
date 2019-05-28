class Joboffer < ApplicationRecord
  belongs_to :user
  has_one :conversation
  belongs_to :location
  belongs_to :skill

  has_one :agreement
belongs_to :user, :optional => true
  has_many :comment
end
