# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  russian    :text
#  ukrainian  :text
#  english    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
    validates :russian, presence: true
    validates :ukrainian, presence: true
    validates :english, presence: true
    validate  :there_can_only_be_one 

    private
    def there_can_only_be_one
        errors[:russian] << 'Вы можете создать только одну запись' if Contact.count > 0
    end
end
