# frozen_string_literal: true

class Period < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :elections

  has_many :mps, through: :elections
  has_many :parties, through: :elections
end
