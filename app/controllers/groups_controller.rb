class GroupsController < ApplicationController
  def new
    @groups = Group.new
  end
end
