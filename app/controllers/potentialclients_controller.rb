class PotentialclientsController < ApplicationController
  
  before_action :set_potentialclient, only: [:show, :edit, :update, :destroy]

  # GET /potentialclients
  # GET /potentialclients.json
  def index
    @potentialclients = Potentialclient.all
  end

  # GET /potentialclients/1
  # GET /potentialclients/1.json
  def show
  end

  # GET /potentialclients/new
  def new
    @potentialclient = Potentialclient.new
  end

  # GET /potentialclients/1/edit
  def edit
  end

  # POST /potentialclients
  # POST /potentialclients.json
  def create
    @potentialclient = Potentialclient.new(potentialclient_params)

    respond_to do |format|
      if @potentialclient.save
        format.html { redirect_to @potentialclient, notice: 'Potentialclient was successfully created.' }
        format.json { render :show, status: :created, location: @potentialclient }
      else
        format.html { render :new }
        format.json { render json: @potentialclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potentialclients/1
  # PATCH/PUT /potentialclients/1.json
  def update
    respond_to do |format|
      if @potentialclient.update(potentialclient_params)
        format.html { redirect_to @potentialclient, notice: 'Potentialclient was successfully updated.' }
        format.json { render :show, status: :ok, location: @potentialclient }
      else
        format.html { render :edit }
        format.json { render json: @potentialclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potentialclients/1
  # DELETE /potentialclients/1.json
  def destroy
    @potentialclient.destroy
    respond_to do |format|
      format.html { redirect_to potentialclients_url, notice: 'Potentialclient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potentialclient
      @potentialclient = Potentialclient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potentialclient_params
      params.require(:potentialclient).permit(:email, :fullname, :worktype, :budget)
    end
end
