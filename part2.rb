class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  #game.each do |g|
    #puts(g)
  #end
  raise WrongNumberOfPlayersError unless game.length == 2
  
  if game[0][1] =~ /^[rps]$/i and game[1][1] =~ /^[rps]$/i
    puts("")
  else
    raise NoSuchStrategyError
  end

  if game[0][1].downcase.eql?(game[1][1].downcase)
    return game[0]
  elsif game[0][1] =~ /^r$/i
    if game[1][1] =~ /^s$/i
      return game[0]
    elsif game[1][1] =~ /^p$/i
      return game[1]
    end
  elsif game[0][1] =~ /^p$/i
    if game[1][1] =~ /^r$/i
      return game[0]
    elsif game[1][1] =~ /^s$/i
      return game[1]
    end
  elsif game[0][1] =~ /^s$/i
    if game[1][1] =~ /^p$/i
      return game[0]
    elsif game[1][1] =~ /^r$/i
      return game[1]
    end
  end
end

def rps_tournament_winner(game)
  #puts(game.length)
  if game[0][0].class == String
    return rps_game_winner(game)
  else
    a = [rps_tournament_winner(game[0]),rps_tournament_winner(game[1])]
    rps_tournament_winner(a)
  end

end
