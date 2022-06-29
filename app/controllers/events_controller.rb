class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @group = Group.find(params[:group_id])
    @event.group_id = @group.id
    redirect_to group_path(@group) if @event.save
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end
end
