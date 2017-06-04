# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.fcmriya.org"

SitemapGenerator::Sitemap.create do
   # Defined priorities
  HIGHEST = 1 
  HIGH = 0.9 
  ABOVE_AVERAGE = 0.7
  MEDIUM = 0.5
  BELOW_AVERAGE = 0.3
  LOW = 0.2

  [:ru, :en, :uk].each do |locale|
    add root_path(locale: locale), priority: HIGHEST
    add articles_path(locale: locale), priority: HIGH
    add albums_path(locale: locale), priority: HIGH
    add videos_path(locale: locale), priority: HIGH
    add about_history_path(locale: locale), priority: HIGH

    Article.find_each do |article|
      add article_path(locale, article), lastmod: article.updated_at, changefreq: 'daily', priority: HIGH
    end

    Album.find_each do |album|
      add album_path(locale, album), lastmod: album.updated_at, changefreq: 'daily', priority: HIGH
    end

    Video.find_each do |video|
      add video_path(locale, video), lastmod: video.updated_at, changefreq: 'daily', priority: HIGH
    end

    Team.find_each do |team|
      add team_path(locale, team), lastmod: team.updated_at, priority: MEDIUM
    end

    Game.find_each do |game|
      add game_path(locale, game), lastmod: game.updated_at, priority: MEDIUM
    end

    Tournament.find_each do |tournament|
      add tournament_path(locale, tournament), lastmod: tournament.updated_at, priority: MEDIUM
    end

  end
end
