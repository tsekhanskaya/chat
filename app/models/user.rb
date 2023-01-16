# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  has_many :rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
end
