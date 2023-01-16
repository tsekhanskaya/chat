# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :messages, -> { sorted }, dependent: :destroy
  belongs_to :user
  before_create { self.title = SecureRandom.hex(3) } # из 6 символов
end
