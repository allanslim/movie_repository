class TitleAssetsController < ApplicationController
  before_action :set_title_asset, only: [:show, :edit, :update, :destroy]

  # GET /title_assets
  # GET /title_assets.json
  def index
    @title_assets = TitleAsset.all
  end

  # GET /title_assets/1
  # GET /title_assets/1.json
  def show
  end

  # GET /title_assets/new
  def new
    @title_asset = TitleAsset.new
  end

  # GET /title_assets/1/edit
  def edit
  end

  # POST /title_assets
  # POST /title_assets.json
  def create
    @title_asset = TitleAsset.new(title_asset_params)

    respond_to do |format|
      if @title_asset.save
        format.html { redirect_to @title_asset, notice: 'Title asset was successfully created.' }
        format.json { render :show, status: :created, location: @title_asset }
      else
        format.html { render :new }
        format.json { render json: @title_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_assets/1
  # PATCH/PUT /title_assets/1.json
  def update
    respond_to do |format|
      if @title_asset.update(title_asset_params)
        format.html { redirect_to @title_asset, notice: 'Title asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @title_asset }
      else
        format.html { render :edit }
        format.json { render json: @title_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_assets/1
  # DELETE /title_assets/1.json
  def destroy
    @title_asset.destroy
    respond_to do |format|
      format.html { redirect_to title_assets_url, notice: 'Title asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_asset
      @title_asset = TitleAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_asset_params
      params.require(:title_asset).permit(:asset_id, :title_id)
    end
end
