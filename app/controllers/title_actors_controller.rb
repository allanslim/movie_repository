class TitleActorsController < ApplicationController
  before_action :set_title_actor, only: [:show, :edit, :update, :destroy]

  # GET /title_actors
  # GET /title_actors.json
  def index
    @title_actors = TitleActor.all
  end

  # GET /title_actors/1
  # GET /title_actors/1.json
  def show
  end

  # GET /title_actors/new
  def new
    @title_actor = TitleActor.new
  end

  # GET /title_actors/1/edit
  def edit
  end

  # POST /title_actors
  # POST /title_actors.json
  def create
    @title_actor = TitleActor.new(title_actor_params)

    respond_to do |format|
      if @title_actor.save
        format.html { redirect_to @title_actor, notice: 'Title actor was successfully created.' }
        format.json { render :show, status: :created, location: @title_actor }
      else
        format.html { render :new }
        format.json { render json: @title_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_actors/1
  # PATCH/PUT /title_actors/1.json
  def update
    respond_to do |format|
      if @title_actor.update(title_actor_params)
        format.html { redirect_to @title_actor, notice: 'Title actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @title_actor }
      else
        format.html { render :edit }
        format.json { render json: @title_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_actors/1
  # DELETE /title_actors/1.json
  def destroy
    @title_actor.destroy
    respond_to do |format|
      format.html { redirect_to title_actors_url, notice: 'Title actor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_actor
      @title_actor = TitleActor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_actor_params
      params.require(:title_actor).permit(:title_id, :actor_id)
    end
end
