class StaticPagesController < ApplicationController
  def battleground
    session[:menu] = "battleground"
    @current_user_warriors = Warrior.where(creater_id: current_user.id) if user_signed_in?
    @enemy_warriors = Warrior.where(creater_id: nil)
    @enemy_warriors += Warrior.where('creater_id != ?', current_user.id) if user_signed_in?
  end
end
