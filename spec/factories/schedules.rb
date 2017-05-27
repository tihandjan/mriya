# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  team       :string
#  stadium    :string
#  mon        :string
#  tue        :string
#  wed        :string
#  thu        :string
#  fri        :string
#  sat        :string
#  sun        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :schedule do
    team "MyString"
    coach "MyString"
    stadium "металлург"
    mon "MyString"
    tue "MyString"
    wed "MyString"
    thu "MyString"
    fri "MyString"
    sat "MyString"
    sun "MyString"
    
    factory :schedule_spartac do
      stadium 'спартак'
    end
  end
end
