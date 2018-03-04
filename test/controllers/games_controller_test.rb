require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url, as: :json
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { api_url: @game.api_url, away_team_id: @game.away_team_id, game_date: @game.game_date, home_team_id: @game.home_team_id, league_year_id: @game.league_year_id } }, as: :json
    end

    assert_response 201
  end

  test "should show game" do
    get game_url(@game), as: :json
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { api_url: @game.api_url, away_team_id: @game.away_team_id, game_date: @game.game_date, home_team_id: @game.home_team_id, league_year_id: @game.league_year_id } }, as: :json
    assert_response 200
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game), as: :json
    end

    assert_response 204
  end
end
