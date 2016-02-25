class VotesController < ApplicationController
  def create
    render json: Vote.create!(voter_id: params[:voter_id], candidate_id: params[:candidate_id])
  end

  def destroy
  end

  def index
    render json: Vote.all
  end
end
