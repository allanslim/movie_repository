class TitleOwnersController < ApplicationController
  before_action :set_title_owner, only: [:show, :edit, :update, :destroy]

  # GET /title_owners
  # GET /title_owners.json
  def index
    @title_owners = TitleOwner.all
  end

  # GET /title_owners/1
  # GET /title_owners/1.json
  def show
  end

  # GET /title_owners/new
  def new
    @title_owner = TitleOwner.new
  end

  # GET /title_owners/1/edit
  def edit
  end

  # POST /title_owners
  # POST /title_owners.json
  def create
    @title_owner = TitleOwner.new(title_owner_params)

    respond_to do |format|
      if @title_owner.save
        format.html { redirect_to @title_owner, notice: 'Title owner was successfully created.' }
        format.json { render :show, status: :created, location: @title_owner }
      else
        format.html { render :new }
        format.json { render json: @title_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_owners/1
  # PATCH/PUT /title_owners/1.json
  def update
    respond_to do |format|
      if @title_owner.update(title_owner_params)
        format.html { redirect_to @title_owner, notice: 'Title owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @title_owner }
      else
        format.html { render :edit }
        format.json { render json: @title_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_owners/1
  # DELETE /title_owners/1.json
  def destroy
    @title_owner.destroy
    respond_to do |format|
      format.html { redirect_to title_owners_url, notice: 'Title owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_owner
      @title_owner = TitleOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_owner_params
      params.require(:title_owner).permit(:title_id, :studio_id)
    end
end
