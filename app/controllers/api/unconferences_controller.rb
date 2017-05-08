class Api::UnconferencesController < ApplicationController
  before_action :set_unconference, only: [:show, :update, :destroy]

  # GET /unconferences
  def index
    @unconferences = Unconference.all

    render json: @unconferences
  end

  # GET /unconferences/1
  def show
    render json: @unconference
  end

  # POST /unconferences
  def create
    @unconference = Unconference.new(unconference_params)

    if @unconference.save
      render json: @unconference, status: :created, location: @unconference
    else
      render json: @unconference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unconferences/1
  def update
    if @unconference.update(unconference_params)
      render json: @unconference
    else
      render json: @unconference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unconferences/1
  def destroy
    @unconference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unconference
      @unconference = Unconference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unconference_params
      params.require(:unconference).permit(:name, :location)
    end
end
