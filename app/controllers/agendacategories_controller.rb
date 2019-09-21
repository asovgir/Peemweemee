class AgendacategoriesController < ApplicationController
  before_action :set_agendacategory, only: [:show, :edit, :update, :destroy]

  # GET /agendacategories
  # GET /agendacategories.json
  def index
    @agendacategories = Agendacategory.all
  end

  # GET /agendacategories/1
  # GET /agendacategories/1.json
  def show
  end

  # GET /agendacategories/new
  def new
    @agendacategory = Agendacategory.new
  end

  # GET /agendacategories/1/edit
  def edit
  end

  # POST /agendacategories
  # POST /agendacategories.json
  def create
    @agendacategory = Agendacategory.new(agendacategory_params)

    respond_to do |format|
      if @agendacategory.save
        format.html { redirect_to @agendacategory, notice: 'Agendacategory was successfully created.' }
        format.json { render :show, status: :created, location: @agendacategory }
      else
        format.html { render :new }
        format.json { render json: @agendacategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendacategories/1
  # PATCH/PUT /agendacategories/1.json
  def update
    respond_to do |format|
      if @agendacategory.update(agendacategory_params)
        format.html { redirect_to @agendacategory, notice: 'Agendacategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @agendacategory }
      else
        format.html { render :edit }
        format.json { render json: @agendacategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendacategories/1
  # DELETE /agendacategories/1.json
  def destroy
    @agendacategory.destroy
    respond_to do |format|
      format.html { redirect_to agendacategories_url, notice: 'Agendacategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendacategory
      @agendacategory = Agendacategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendacategory_params
      params.require(:agendacategory).permit(:category)
    end
end
