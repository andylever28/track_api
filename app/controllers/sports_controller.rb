class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :update, :destroy]

  # GET /sports
  def index
    @sports = Sport.all

    render json: @sports
  end

  # GET /sports/1
  def show
    render json: @sport
  end

  # POST /sports
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: @sport, status: :created, location: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports/1
  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1
  def destroy
    @sport.destroy
  end

  def bulk_create
   @sports = bulk_sport_params
   @sports.each do |sport|
    Sport.create(sport)
   end 
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sport_params
      params.require(:sport).permit(:name, list: [:name])
    end

    def bulk_sport_params
      params.require(:sports).map{|sport| sport.permit(:name)}
    end 
end
