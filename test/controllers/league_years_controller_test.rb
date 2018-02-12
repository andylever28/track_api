require 'test_helper'

class LeagueYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_year = league_years(:one)
  end

  test "should get index" do
    get league_years_url, as: :json
    assert_response :success
  end

  test "should create league_year" do
    assert_difference('LeagueYear.count') do
      post league_years_url, params: { league_year: { current_season: @league_year.current_season, end_date: @league_year.end_date, league_id: @league_year.league_id, season_name: @league_year.season_name, season_type: @league_year.season_type, season_year: @league_year.season_year, start_date: @league_year.start_date } }, as: :json
    end

    assert_response 201
  end

  test "should show league_year" do
    get league_year_url(@league_year), as: :json
    assert_response :success
  end

  test "should update league_year" do
    patch league_year_url(@league_year), params: { league_year: { current_season: @league_year.current_season, end_date: @league_year.end_date, league_id: @league_year.league_id, season_name: @league_year.season_name, season_type: @league_year.season_type, season_year: @league_year.season_year, start_date: @league_year.start_date } }, as: :json
    assert_response 200
  end

  test "should destroy league_year" do
    assert_difference('LeagueYear.count', -1) do
      delete league_year_url(@league_year), as: :json
    end

    assert_response 204
  end
end
