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

  add root_path, priority: HIGHEST
  add articles_path, priority: HIGH
  add albums_path, priority: HIGH
  add videos_path, priority: HIGH
  add about_history_path, priority: HIGH

  Article.find_each do |article|
    add article_path(article), lastmod: article.updated_at, changefreq: 'daily', priority: HIGH
  end

  Album.find_each do |album|
    add album_path(album), lastmod: album.updated_at, changefreq: 'daily', priority: HIGH
  end

  Video.find_each do |video|
    add video_path(video), lastmod: video.updated_at, changefreq: 'daily', priority: HIGH
  end

  Team.find_each do |team|
    add team_path(team), lastmod: team.updated_at, priority: MEDIUM
  end

  Game.find_each do |game|
    add game_path(game), lastmod: game.updated_at, priority: MEDIUM
  end

  Tournament.find_each do |tournament|
    add tournament_path(tournament), lastmod: tournament.updated_at, priority: MEDIUM
  end
end
