# frozen_string_literal: true

class Mp < ApplicationRecord
  validates :name, :surname, :gender, :birthdate, presence: true
  validate :olum_tarihi_dogum_tarihinden_kucuk_olamaz
  has_many :elections
  has_many :periods, through: :elections
  has_many :parties, through: :elections

  def olum_tarihi_dogum_tarihinden_kucuk_olamaz
    unless deaddate.nil?
      if deaddate < birthdate || deaddate == birthdate
        errors.add(:deaddate, 'Doğum tarihinden küçük ve eşit olamaz!')
      end
    end
  end

  def full_name
    "#{name}, #{name2} #{surname}"
  end
end
