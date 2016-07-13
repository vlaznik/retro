json.array!(@retro_games) do |retro_game|
  json.extract! retro_game, :id, :description
  json.url retro_game_url(retro_game, format: :json)
end
