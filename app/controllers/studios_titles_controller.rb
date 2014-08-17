class StudiosTitlesController < ApplicationController
  before_action :set_studios_title, only: [:show, :edit, :update, :destroy]

  # GET /studios_titles
  # GET /studios_titles.json
  def index
    @studios_titles = StudiosTitle.all
  end

  # GET /studios_titles/1
  # GET /studios_titles/1.json
  def show
  end

  # GET /studios_titles/new
  def new
    @studios_title = StudiosTitle.new
  end

  # GET /studios_titles/1/edit
  def edit
  end

  # POST /studios_titles
  # POST /studios_titles.json
  def create
    @studios_title = StudiosTitle.new(studios_title_params)

    respond_to do |format|
      if @studios_title.save
        format.html { redirect_to @studios_title, notice: 'Studios title was successfully created.' }
        format.json { render :show, status: :created, location: @studios_title }
      else
        format.html { render :new }
        format.json { render json: @studios_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studios_titles/1
  # PATCH/PUT /studios_titles/1.json
  def update
    respond_to do |format|
      if @studios_title.update(studios_title_params)
        format.html { redirect_to @studios_title, notice: 'Studios title was successfully updated.' }
        format.json { render :show, status: :ok, location: @studios_title }
      else
        format.html { render :edit }
        format.json { render json: @studios_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studios_titles/1
  # DELETE /studios_titles/1.json
  def destroy
    @studios_title.destroy
    respond_to do |format|
      format.html { redirect_to studios_titles_url, notice: 'Studios title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studios_title
      @studios_title = StudiosTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studios_title_params
      params.require(:studios_title).permit(:title_id, :studio_id)
    end
end
