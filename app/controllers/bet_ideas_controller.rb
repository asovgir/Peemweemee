class BetIdeasController < ApplicationController
  before_action :set_bet_idea, only: [:show, :edit, :update, :destroy]

  # GET /bet_ideas
  # GET /bet_ideas.json
  def index
    @bet_ideas = BetIdea.all
  end

  # GET /bet_ideas/1
  # GET /bet_ideas/1.json
  def show
  end

  # GET /bet_ideas/new
  def new
    @bet_idea = BetIdea.new
  end

  # GET /bet_ideas/1/edit
  def edit
  end

  # POST /bet_ideas
  # POST /bet_ideas.json
  def create
    @bet_idea = BetIdea.new(bet_idea_params)

    respond_to do |format|
      if @bet_idea.save
        format.html { redirect_to @bet_idea, notice: 'Bet idea was successfully created.' }
        format.json { render :show, status: :created, location: @bet_idea }
      else
        format.html { render :new }
        format.json { render json: @bet_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bet_ideas/1
  # PATCH/PUT /bet_ideas/1.json
  def update
    respond_to do |format|
      if @bet_idea.update(bet_idea_params)
        format.html { redirect_to @bet_idea, notice: 'Bet idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @bet_idea }
      else
        format.html { render :edit }
        format.json { render json: @bet_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bet_ideas/1
  # DELETE /bet_ideas/1.json
  def destroy
    @bet_idea.destroy
    respond_to do |format|
      format.html { redirect_to bet_ideas_url, notice: 'Bet idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet_idea
      @bet_idea = BetIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_idea_params
      params.require(:bet_idea).permit(:idea)
    end
end
