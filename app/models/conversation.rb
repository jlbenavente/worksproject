class Conversation < ApplicationRecord
  has_one :joboffer
  has_many :messages

  belongs_to :speaker_one, class_name: 'User', foreign_key: 'speaker_one_id'
  belongs_to :speaker_two, class_name: 'User', foreign_key: 'speaker_two_id'
end
