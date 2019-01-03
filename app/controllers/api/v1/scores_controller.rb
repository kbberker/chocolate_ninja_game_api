class Api::V1::ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      render json: @score
    else
      render json: {error: 'Unable to create score.'}, status: 400
    end
  end

  private

  def score_params
    params.require(:score).permit(:points, :player_id)
  end
end
