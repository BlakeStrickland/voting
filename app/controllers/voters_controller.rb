class VotersController < ApplicationController
  def create
    render json: Voter.create!(name: params[:name],party: params[:party])
  end

  def show
    v = Voter.find(params[:id])
    if v.token == params[:token]
      render json: v
    else
      render json: "nope"
    end
  end

  def update
    v = Voter.find(params[:id])
    if params[:token] == v.token
      # v.update(name: params[:name], party: params[:party])
      v.name = params[:name] if :name
      v.name = params[:party] if :party
      v.save
      render json: v
    else
      render json: "Nope"
    end
  end
end
