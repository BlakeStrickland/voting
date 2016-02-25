class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.find(params[:id])
  end

  def create
    render json: Candidate.create!(name: params[:name],hometown: params[:hometown],district: params[:district],party: params[:party])
  end
end
