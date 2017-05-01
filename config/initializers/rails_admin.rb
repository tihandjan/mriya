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
    list do
      field :title
      field :cover_photo
      field :created_at
    end
    create do
      field :title
      field :cover_photo
      field :photos
    end
    edit do
      field :title
      field :cover_photo
      field :photos
    end
  end

  config.model 'Article' do
    list do
      field :title
      field :body
      field :image
      field :created_at
    end
    create do
      field :title
      field :body, :ck_editor
      field :image
    end
    edit do
      field :title
      field :body, :ck_editor
      field :image
    end
  end

  config.model 'Video' do
    list do
      field :title
      field :summary
      field :video_url
    end
    create do
      field :title
      field :summary
      field :video_url
    end
    edit do
      field :title
      field :summary
      field :video_url
    end
  end
  config.model 'Merit' do
    list do
      field :merit
      field :coach
    end
    create do
      field :merit
      field :coach
    end
    edit do
      field :merit
      field :coach
    end
  end
  config.model 'Player' do
    list do
      field :name
      field :surname
      field :birthday
      field :photo
      field :team
    end
    create do
      field :name
      field :surname
      field :birthday
      field :photo
      field :team
    end
    edit do
      field :name
      field :surname
      field :birthday
      field :photo
      field :team
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
    list do
      field :name
      field :birthday
      field :photo
      field :teams
      field :merits
    end
    create do
      field :name
      field :birthday
      field :photo
      field :teams
      field :merits
    end
    edit do
      field :name
      field :birthday
      field :photo
      field :teams
      field :merits
    end
  end
  config.model 'Schedule' do
    create do
      field :stadium, :enum do
        enum do
          ['металлург', 'спартак']
        end
      end
      field :team
      field :coach
      field :mon
      field :tue
      field :wed
      field :thu
      field :fri
      field :sat
      field :sun
    end
    edit do
      field :stadium, :enum do
        enum do
          ['металлург', 'спартак']
        end
      end
      field :team
      field :coach
      field :mon
      field :tue
      field :wed
      field :thu
      field :fri
      field :sat
      field :sun
    end
  end
  config.model 'Tournament' do
    list do
      field :title
      field :kind
    end
    create do
      field :title
      field :kind, :enum do
        enum do
          ['зимний', 'летний', 'весенний']
        end
      end
      field :body, :ck_editor
    end
    edit do
      field :title
      field :kind, :enum do
        enum do
          ['зимний', 'летний', 'весенний']
        end
      end
      field :body, :ck_editor
    end
  end

end
