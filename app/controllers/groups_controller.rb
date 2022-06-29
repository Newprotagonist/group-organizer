class GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    @group.user = current_user
    redirect_to group_path(@group) if @group.save
  end

  def show
    @group = Group.find(params[:id])
    @group_member = GroupMember.new
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
