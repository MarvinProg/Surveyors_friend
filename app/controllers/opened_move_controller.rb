class OpenedMoveController < ApplicationController
  def index
    @opened_move = OpenedMove.all
  end

  def new 
  end

  def create 
    @opened_move = OpenedMove.new(params_opened_move)
    # if @article.valid?
    if @opened_move.save
      redirect_to opened_move_index_url
      # render @article
    else 
      # @error = @opened_move.errors.full_messages.first
      # render "new"
      redirect_to action: :new
    end
  end

  def destroy 
    @opened_move = OpenedMove.all
    @opened_move.destroy_all
    # redirect_to article_path
    redirect_to action: :new
  end

  private

  def params_opened_move
    params.require(:opened_move).permit(:number_first_poin, :x_coordinate_first_point, :y_coordinate_first_point, :number_second_poin, :x_coordinate_second_point, :y_coordinate_second_point)
  end
end
