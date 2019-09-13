class WarriorsController < ApplicationController
  before_action :set_warriore, only: [:show, :edit, :update, :destroy]
  # GET /warriores
  # GET /warriores.json
  def index
    session[:menu] = "index"
    @current_user_warriors = Warrior.where(creater_id: current_user.id) if user_signed_in?
    @enemy_warriors = Warrior.where(creater_id: nil)
    @enemy_warriors += Warrior.where('creater_id != ?', current_user.id) if user_signed_in?
    render template: "warrior/index"
  end

  # GET /warriores/1
  # GET /warriores/1.json
  def show
    @creater_email = User.find( @warrior.creater_id).email if @warrior.creater_id
    render template: "warrior/show"
  end

  # GET /warriores/new
  def new
    @warrior = Warrior.new
    render template: "warrior/new"
  end

  # GET /warriores/1/edit
  def edit
    @warrior = set_warriore()
    render template: "warrior/edit"
  end

  # POST /warriores
  # POST /warriores.json
  def create
    @warrior = Warrior.new(warriore_params)
    respond_to do |format|
      if @warrior.save
        format.html { redirect_to @warrior, notice: 'Warrior was successfully created.' }
        format.json { render :show, status: :created, location: @warrior }
      else
        format.html { render :new }
        format.json { render json: @warrior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warriores/1
  # PATCH/PUT /warriores/1.json
  def update
    respond_to do |format|
      if @warrior.update(warriore_params)
        format.html { redirect_to @warrior, notice: 'Warrior was successfully updated.' }
        format.json { render :show, status: :ok, location: @warrior }
      else
        format.html { render :edit }
        format.json { render json: @warrior.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warriores/1
  # DELETE /warriores/1.json
  def destroy
    @warrior.destroy
    respond_to do |format|
      format.html { redirect_to warriors_path, notice: 'Warrior was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def statistical
    data = []
    last_combats = []
    warrior = set_warriore
    battles = Battle.where(warrior_one_id: warrior.id)
    victory = 0
    defeat = 0
    battles.each do |battle|
      if battle.winner_id == warrior.id
        result = 'victory'
        victory += 1
      else
        result = 'defeat'
        defeat += 1
      end
      last_combats << {enemy_name: Warrior.find(battle.warrior_two_id).name, result: result}
    end
    statistical = {all: battles.length, victory: victory, defeat: defeat}
    data << statistical
    data << last_combats
    render :json => data
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warriore
      @warrior = Warrior.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warriore_params
      params.require(:warrior).permit(:creater_id,:name, :description, :image)
    end
end
