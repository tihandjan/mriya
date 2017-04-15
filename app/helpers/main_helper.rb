module MainHelper
    def set_teams
        Team.all
    end
    
    def set_leagues
        League.all.order(id: :desc)
    end

    def set_coaches
        Coach.all
    end
end
