# frozen_string_literal: true
class Period < ApplicationRecord
  has_many :elections
  has_many :mps, through: :elections
  has_many :parties, through: :elections
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
