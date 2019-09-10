class WarriorsController < ApplicationController
  before_action :set_warriore, only: [:show, :edit, :update, :destroy]
  # GET /warriores
  # GET /warriores.json
  def index
    @warriors = Warrior.all
    render template: "warrior/index"
  end

  # GET /warriores/1
  # GET /warriores/1.json
  def show
  end

  # GET /warriores/new
  def new
    @warrior = Warrior.new
    render template: "warrior/new"
  end

  # GET /warriores/1/edit
  def edit
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
      format.html { redirect_to warriores_url, notice: 'Warrior was successfully destroyed.' }
      format.json { head :no_content }
    end
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
