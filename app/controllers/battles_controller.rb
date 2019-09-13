class BattlesController < ApplicationController
  include WarrioresHelper

  def battle
    first_warrior = Warrior.find(params[:first_warrior_id])
    second_warrior = Warrior.find(params[:second_warrior_id])
    battle = Battle.new(warrior_one_id: first_warrior.id,warrior_two_id: second_warrior.id)
    first_warrior_performances = first_warrior.armor + first_warrior.strength
    second_warrior_performances = second_warrior.armor + second_warrior.strength
    if first_warrior_performances > second_warrior_performances
      battle.winner_id = first_warrior.id
      check_warrior_level(first_warrior,3)
    elsif first_warrior_performances < second_warrior_performances
      battle.winner_id = second_warrior.id
      check_warrior_level(first_warrior,1)
    elsif first_warrior_performances == second_warrior_performances
      if rand(1..2) == 1
        battle.winner_id = first_warrior.id
        check_warrior_level(first_warrior,3)
      else
        battle.winner_id = second_warrior.id
        check_warrior_level(first_warrior,1)
      end
    end
    battle.save
    render :json => battle.winner_id
  end
end
