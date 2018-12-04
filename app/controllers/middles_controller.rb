class MiddlesController < ApplicationController

  def create
    @middle = Middle.new(board_id: params[:board_id], user_id: params[:user_id])
    @middle.save!
    redirect_to root_path
  end

  def destroy
    @middle = Middle.find(params[:id])
    @middle.delete
    redirect_to root_path
  end
end
