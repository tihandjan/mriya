# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  birthday   :date
#

class Coach < ApplicationRecord
    translates :name
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :name, presence: true

    has_many :partnership, dependent: :destroy
    has_many :teams, through: :partnership
    has_many :merits, dependent: :destroy

    validates :name, presence: true
    validates :photo, presence: true
    validates :birthday, presence: true

    mount_uploader :photo, CoachUploader

    def self.search(search)
      unless search.strip.length == 0
        if search
            with_translations(I18n.locale).where("LOWER(coach_translations.name) LIKE ?", "%#{search.mb_chars.downcase.to_s}%").order(created_at: :desc).first(4)
        end
      end
    end
end
