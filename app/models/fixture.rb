# == Schema Information
#
# Table name: fixtures
#
#  id         :integer          not null, primary key
#  home_team  :string
#  away_team  :string
#  category   :string
#  score      :string           default("---")
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fixture < ApplicationRecord
    validates :date, presence: true
    validates :home_team, presence: true
    validates :away_team, presence: true
    validates :category, presence: true

    def self.prev_fixtures
        records = []
        categories = ['u-7','u-8','u-9','u-10','u-11','u-12','u-13','u-14','u-15','u-16','u-17']
        categories.each do |cat|
            item = where('date < ? and LOWER(category) = ?', Time.current, cat).order(date: :desc).first 
            unless item.blank?
                records << item
            end
        end
        records
    end
    def self.next_fixtures
        records = []
        categories = ['u-7','u-8','u-9','u-10','u-11','u-12','u-13','u-14','u-15','u-16','u-17']
        categories.each do |cat|
            item = where('date > ? and LOWER(category) = ?', Time.current, cat).order(date: :asc).first
            unless item.blank?
                records << item
            end
        end
        records
    end
    
end
