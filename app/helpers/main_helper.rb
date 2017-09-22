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

    def list_of_teams
        h = {}
        Team.all.each {|team| h[team.name] = [team, team.name.split('-')[1].to_i]}
        h = h.sort_by{|k, v| v[1]}
        h.collect do |data|
            content_tag :li do
                link_to data[0], data[1][0]
            end
        end
    end
end
