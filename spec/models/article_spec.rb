# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_articles_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:image) }
  end

  describe 'search' do
    it 'if title equal to query we get article' do
      article_1 = FactoryGirl.create(:article, title: 'Hello Article Hello Article')
      article_2 = FactoryGirl.create(:article, title: 'Some other title to search')
      article = Article.search('Hello Article Hello Article') 

      expect(article).to match_array(article_1)
      expect(article).to_not eq([article_1, article_2])
    end
  end
end
