class DrinkusersController < ApplicationController
  before_action :set_drinkuser, only: [:show, :edit, :update, :destroy]

  # GET /drinkusers
  # GET /drinkusers.json
  def index
    @drinkusers = Drinkuser.all
  end

  # GET /drinkusers/1
  # GET /drinkusers/1.json
  def show
  end

  # GET /drinkusers/new
  def new
    @drinkuser = Drinkuser.new
  end

  # GET /drinkusers/1/edit
  def edit
  end

  # POST /drinkusers
  # POST /drinkusers.json
  def create
    @drinkuser = Drinkuser.new(drinkuser_params)

    respond_to do |format|
      if @drinkuser.save
        format.html { redirect_to @drinkuser, notice: 'Drinkuser was successfully created.' }
        format.json { render :show, status: :created, location: @drinkuser }
      else
        format.html { render :new }
        format.json { render json: @drinkuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drinkusers/1
  # PATCH/PUT /drinkusers/1.json
  def update
    respond_to do |format|
      if @drinkuser.update(drinkuser_params)
        format.html { redirect_to @drinkuser, notice: 'Drinkuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @drinkuser }
      else
        format.html { render :edit }
        format.json { render json: @drinkuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drinkusers/1
  # DELETE /drinkusers/1.json
  def destroy
    @drinkuser.destroy
    respond_to do |format|
      format.html { redirect_to drinkusers_url, notice: 'Drinkuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinkuser
      @drinkuser = Drinkuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drinkuser_params
      params.fetch(:drinkuser, {})
    end
end
