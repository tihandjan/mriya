class SchedulesController < ApplicationController
    def index
        @schedule_metalurg = Schedule.where(stadium: 'металлург')
        @schedule_spartac = Schedule.where(stadium: 'спартак')
    end
end