class GroupMembersController < ApplicationController
  def create
    @group_member = GroupMember.new(group_member_params)
    @group = Group.find(params[:group_id])
    @group_member.group_id = @group.id
    redirect_to group_path(@group) if @group_member.save
  end

  private

  def group_member_params
    params.require(:group_member).permit(:user_id)
  end
end
