module MainHelper
    def set_teams
        Team.all.order(created_at: :asc)
    end
    
    def set_leagues
        League.where("LOWER(name) = ? OR LOWER(name) = ?", 'u-17', 'u-15').order(name: :desc)
    end

    def set_coaches
        Coach.all
    end
end
