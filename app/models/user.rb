class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :conversation_as_speaker_one, class_name: 'Conversation', foreign_key: 'speaker_one_id'
  has_many :conversation_as_speaker_two, class_name: 'Conversation', foreign_key: 'speaker_two_id'

  has_many :sended_messages, class_name: 'Messages', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Messages', foreign_key: 'receiver_id'

  has_many :joboffer, through: :agreement
  has_many :comment
  has_many :agreement
  has_many :skill
  has_many :picture

  has_one :rol
  has_one :location
  
end
