module WarrioresHelper

  def check_warrior_level(warrior,points)
    if points
      warrior.points += points
    end
    warrior_points = warrior.points
    if warrior_points >= 20 && warrior_points < 45
      warrior.level = 2
      warrior.armor = 4
      warrior.strength = 4
    elsif warrior_points >= 45 && warrior_points < 70
      warrior.level = 3
      warrior.armor = 6
      warrior.strength = 6
    elsif warrior_points >= 70 && warrior_points < 136
      warrior.level = 4
      warrior.armor = 8
      warrior.strength = 8
    elsif warrior_points >= 136
      warrior.level = 5
      warrior.armor = 10
      warrior.strength = 10
    end
    warrior.save
  end

end
