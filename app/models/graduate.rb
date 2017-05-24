# == Schema Information
#
# Table name: graduates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Graduate < ApplicationRecord
    validates :body, presence: true
    validate :there_can_only_be_one

    translates :body
    accepts_nested_attributes_for :translations, allow_destroy: true
    translation_class.validates :body, presence: true

    private
    def there_can_only_be_one
        errors[:body] << 'Вы можете создать только одну запись' if Graduate.count > 0
    end
end
