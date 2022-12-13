class FacebooksController < ApplicationController
  before_action :set_facebook, only: %i[ show edit update destroy ]

  # GET /facebooks or /facebooks.json
  def index
    @facebooks = Facebook.all
  end

  # GET /facebooks/1 or /facebooks/1.json
  def show
  end

  # GET /facebooks/new
  def new
    @facebook = Facebook.new
  end

  # GET /facebooks/1/edit
  def edit
  end

  # POST /facebooks or /facebooks.json
  def create
    @facebook = Facebook.new(facebook_params)

    respond_to do |format|
      if @facebook.save
        format.html { redirect_to facebook_url(@facebook), notice: "Facebook was successfully created." }
        format.json { render :show, status: :created, location: @facebook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facebooks/1 or /facebooks/1.json
  def update
    respond_to do |format|
      if @facebook.update(facebook_params)
        format.html { redirect_to facebook_url(@facebook), notice: "Facebook was successfully updated." }
        format.json { render :show, status: :ok, location: @facebook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebooks/1 or /facebooks/1.json
  def destroy
    @facebook.destroy

    respond_to do |format|
      format.html { redirect_to facebooks_url, notice: "Facebook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facebook
      @facebook = Facebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def facebook_params
      params.require(:facebook).permit(:title, :content, :image)
    end
end
