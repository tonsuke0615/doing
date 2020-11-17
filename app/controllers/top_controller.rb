class TopController < ApplicationController
  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to :root
    else
      render action: :top
    end
  end
end
