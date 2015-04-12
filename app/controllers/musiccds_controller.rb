class MusiccdsController < ApplicationController
  before_action :set_musiccd, only: [:show, :edit, :update, :destroy]

  # GET /musiccds
  # GET /musiccds.json
  def index
    @musiccds = Musiccd.all
  end

  # GET /musiccds/1
  # GET /musiccds/1.json
  def show
  end

  # GET /musiccds/new
  def new
    @musiccd = Musiccd.new
  end

  # GET /musiccds/1/edit
  def edit
  end

  # POST /musiccds
  # POST /musiccds.json
  def create
    @musiccd = Musiccd.new(musiccd_params)

    respond_to do |format|
      if @musiccd.save
        format.html { redirect_to @musiccd, notice: 'Musiccd was successfully created.' }
        format.json { render :show, status: :created, location: @musiccd }
      else
        format.html { render :new }
        format.json { render json: @musiccd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musiccds/1
  # PATCH/PUT /musiccds/1.json
  def update
    respond_to do |format|
      if @musiccd.update(musiccd_params)
        format.html { redirect_to @musiccd, notice: 'Musiccd was successfully updated.' }
        format.json { render :show, status: :ok, location: @musiccd }
      else
        format.html { render :edit }
        format.json { render json: @musiccd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musiccds/1
  # DELETE /musiccds/1.json
  def destroy
    @musiccd.destroy
    respond_to do |format|
      format.html { redirect_to musiccds_url, notice: 'Musiccd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musiccd
      @musiccd = Musiccd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musiccd_params
      params.require(:musiccd).permit(:title, :author, :release_year, :price, :description, :cover_url)
    end
end
