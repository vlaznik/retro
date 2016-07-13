require 'test_helper'

class RetroGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retro_game = retro_games(:one)
  end

  test "should get index" do
    get retro_games_url
    assert_response :success
  end

  test "should get new" do
    get new_retro_game_url
    assert_response :success
  end

  test "should create retro_game" do
    assert_difference('RetroGame.count') do
      post retro_games_url, params: { retro_game: { description: @retro_game.description } }
    end

    assert_redirected_to retro_game_url(RetroGame.last)
  end

  test "should show retro_game" do
    get retro_game_url(@retro_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_retro_game_url(@retro_game)
    assert_response :success
  end

  test "should update retro_game" do
    patch retro_game_url(@retro_game), params: { retro_game: { description: @retro_game.description } }
    assert_redirected_to retro_game_url(@retro_game)
  end

  test "should destroy retro_game" do
    assert_difference('RetroGame.count', -1) do
      delete retro_game_url(@retro_game)
    end

    assert_redirected_to retro_games_url
  end
end
