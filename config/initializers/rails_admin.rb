RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

    config.authorize_with do
      unless current_user.try(:admin?)
        flash[:alert] = "You are not authorize to access this page!"
        redirect_to main_app.root_path
      end
    end

  config.included_models = [
    'Album',
    'Video',
    'Graduate',
    'Achievement',
    'Merit', 
    'Player',
    'Team',
    'LeagueTeam',
    'Contact',
    'League',
    'Game',
    'User',
    'Schedule',
    'Fixture',
    'Article',
    'Table',
    'Coach',
    'Tournament',
    'Photo',
    'Article::Translation',
    'Album::Translation',
    'Video::Translation',
    'Player::Translation',
    'Coach::Translation',
    'Tournament::Translation',
    'Achievement::Translation',
    'Graduate::Translation',
    'Game::Translation',
    'Merit::Translation',
    'Schedule::Translation'
  ]
  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.excluded_models = ["Partnership", "Role", "View"]
  config.model 'Album' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
  end

  config.model 'Album::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :title
      field :locale
    end
    edit do
      field :title
      field :locale
    end
  end

  config.model 'Article' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
  end

  config.model 'Article::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :title
      field :body, :ck_editor
      field :locale
    end
    edit do
      field :title
      field :body, :ck_editor
      field :locale
    end
  end

  config.model 'Video' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
  end

  config.model 'Video::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :title
      field :summary
      field :locale
    end
    edit do
      field :title
      field :summary
      field :locale
    end
  end

  config.model 'Merit' do
    configure :translations, :globalize_tabs
  end
  config.model 'Merit::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :merit
      field :locale
    end
    edit do
      field :merit
      field :locale     
    end
  end
  config.model 'Player' do
    configure :translations, :globalize_tabs
  end


  config.model 'Player::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :name
      field :surname
      field :locale
    end
    edit do
      field :name
      field :surname
      field :locale
    end
  end


  config.model 'Team' do
    list do
      field :name
      field :photo
    end
    create do
      field :name
      field :photo
    end
    edit do
      field :name
      field :photo
    end
  end
  config.model 'LeagueTeam' do
    list do
      field :team_name
      field :league
    end
    create do
      field :team_name
      field :league
    end
    edit do
      field :team_name
      field :league
    end
  end
  config.model 'League' do
    list do
      field :name
      field :league_teams
    end
    create do
      field :name
      field :league_teams
    end
    edit do
      field :name
      field :league_teams
    end
  end
  config.model 'Table' do
    list do
      field :points
      field :team_name
      field :league
    end
    create do
      field :points
      field :team_name
      field :league
    end
    edit do
      field :points
      field :team_name
      field :league
    end
  end
  config.model 'Coach' do
    configure :translations, :globalize_tabs
  end

  config.model 'Coach::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :name
      field :locale
    end
    edit do
      field :name
      field :locale
    end
  end

  config.model 'Schedule' do
    configure :translations, :globalize_tabs
    include_all_fields
    field :stadium, :enum do
      enum do
        ['металлург', 'спартак']
      end
    end
  end

  config.model 'Schedule::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :coach
      field :locale
    end
    edit do
      field :coach
      field :locale
    end
  end

  config.model 'Tournament' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
    field :kind, :enum do
      enum do
        ['зимний', 'летний', 'весенний']
      end
    end
  end

  config.model 'Tournament::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :title
      field :body, :ck_editor
      field :locale
    end
    edit do
      field :title
      field :body, :ck_editor
      field :locale
    end
  end

  config.model 'Fixture' do
    list do
      field :home_team
      field :away_team
      field :score
      field :category, :enum do
        enum do
          ['U-7','U-8','U-9','U-10','U-11','U-12','U-13','U-14','U-15','U-16','U-17']
        end
      end      
      field :date
    end
    create do
      field :home_team
      field :away_team
      field :score
      field :category, :enum do
        enum do
          ['U-7','U-8','U-9','U-10','U-11','U-12','U-13','U-14','U-15','U-16','U-17']
        end
      end      
      field :date
    end
    edit do
      field :home_team
      field :away_team
      field :score
      field :category, :enum do
        enum do
          ['U-7','U-8','U-9','U-10','U-11','U-12','U-13','U-14','U-15','U-16','U-17']
        end
      end       
      field :date
    end
  end

  config.model 'Achievement' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
  end

  config.model 'Achievement::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :title
      field :body, :ck_editor
      field :locale
    end
    edit do
      field :title
      field :body, :ck_editor
      field :locale
    end
  end

  config.model 'Graduate' do
    configure :translations, :globalize_tabs
    exclude_fields :slug
  end

  config.model 'Graduate::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :body, :ck_editor
      field :locale
    end
    edit do
      field :body, :ck_editor
      field :locale
    end
  end

  config.model 'Game' do
    configure :translations, :globalize_tabs    
    exclude_fields :slug
    field :category, :enum do
      enum do
        ['перевенство ДЮФЛ', 'первенство харьковской обл.']
      end
    end
  end

  config.model 'Game::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    create do
      field :body, :ck_editor
      field :locale
      field :season
    end
    edit do
      field :body, :ck_editor
      field :locale
      field :season      
    end
  end

  config.model 'Contact' do
    list do
      field :russian
      field :ukrainian
      field :english
    end
    create do
      field :russian, :ck_editor
      field :ukrainian, :ck_editor
      field :english, :ck_editor
    end
    edit do
      field :russian, :ck_editor
      field :ukrainian, :ck_editor
      field :english, :ck_editor
    end
  end
end
