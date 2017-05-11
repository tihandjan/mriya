# == Schema Information
#
# Table name: graduates
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Graduate < ApplicationRecord
    validates :body, presence: true
    validate :there_can_only_be_one

    private
    def there_can_only_be_one
        errors[:body] << 'Вы можете создать только одну запись' if Graduate.count > 0
    end
end
