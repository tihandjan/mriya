class AboutController < ApplicationController
    def history
    end
    def mission
    end
    def tips
    end
    def memo
    end
    def achievements
    end
    def emblem
    end
    def graduates
        @graduates = Graduate.last
    end
    def sponsors
    end
    def coaching
        @coaches = Coach.all
    end
    def anthem
    end
    def parents_community
    end
end