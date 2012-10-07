# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class DiceSet	
  def initialize
    @values = (1..6)
  end

  def roll
    rand(1..6)
end

class Player
  attr_accessor = points, array_of_points,first_300

  def initialize
    points = 0
    array_of_points = []
    first_300 = false

  def throw
    dice = DiceSet.new
    dice.roll
  end

  def points(value)
    points += value
  end

  def turn(value)
    array_of_points << value
  end

  def clear
    array_of_points = []
  end

  def first300
    first_300
  end

  def points3k
    if points >= 3000
      true
    else 
      false
    end
  end
end

class Game

  attr_accessor = array_of_players

  def initialize
    array_of_players = []
  end

  def createPlayers(number)
    for i in (1..number)
      array_of_players << Player.new
    end
  end

  def turn
    for i in array_of_players
      5.times {|k| i.turn(i.throw)}
      points = score(i.array_of_points)
      i.clear

      if points >= 300
        i.firt_300 = true
      end

      if i.first300
        i.points(points)
      end

      if i.points >= 3000
        final_turn(array_of_players.index(i))
      end

    end
  end


  def final_turn(number)
      for i in array_of_players
        if array_of_players.inex(i) != number
          5.times {|k| i.turn(i.throw)}
          points = score(i.array_of_points
          i.clear

          if i.first_300 or points >= 300
            i.points(points)
          end
        end
      end
  end

  def score(dice)
    result = 0

    if dice.count(1) == 3
       result += 1000
       3.times {|i| dice.delete_at(dice.index(1))}

    else

      for i in (2..6)
        if dice.count(i) >= 3
          result += i*100
          3.times {|k| dice.delete_at(dice.index(i))}
          break
        end
      end
    end
    result += dice.count(1)*100
    result += dice.count(5)*50
    result
  end

end


