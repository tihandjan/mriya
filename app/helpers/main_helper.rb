module MainHelper
    def set_teams
        Team.all.order(created_at: :asc)
    end
    
    def set_leagues
        League.all.order(id: :desc)
    end

    def set_coaches
        Coach.all
    end
end
