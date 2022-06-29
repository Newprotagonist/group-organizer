class GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    @group.user = current_user
    redirect_to group_path(@group) if @group.save
  end

  def show
    @group = Group.find(params[:id])
    @group_member = GroupMember.new
    @event = Event.new
    @events = @group.events
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
