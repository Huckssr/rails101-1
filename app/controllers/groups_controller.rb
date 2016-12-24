class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  private

  def group_params
    params.require(:group).permit(:title, :description)
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to groups_path
  end

end
