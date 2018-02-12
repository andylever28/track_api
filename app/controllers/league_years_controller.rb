class LeagueYearsController < ApplicationController
  before_action :set_league_year, only: [:show, :update, :destroy]

  # GET /league_years
  def index
    @league_years = LeagueYear.all

    render json: @league_years
  end

  # GET /league_years/1
  def show
    render json: @league_year
  end

  # POST /league_years
  def create
    @league_year = LeagueYear.new(league_year_params)

    if @league_year.save
      render json: @league_year, status: :created, location: @league_year
    else
      render json: @league_year.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /league_years/1
  def update
    if @league_year.update(league_year_params)
      render json: @league_year
    else
      render json: @league_year.errors, status: :unprocessable_entity
    end
  end

  # DELETE /league_years/1
  def destroy
    @league_year.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_year
      @league_year = LeagueYear.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def league_year_params
      params.require(:league_year).permit(:league_id, :start_date, :end_date, :season_name, :season_type, :current_season, :season_year)
    end
end
