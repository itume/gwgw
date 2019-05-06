class RepresentatorsController < ApplicationController
  before_action :set_representator, only: [:show, :edit, :update, :destroy]

  # GET /representators
  # GET /representators.json
  def index
    @representators = Representator.all
  end

  # GET /representators/1
  # GET /representators/1.json
  def show
  end

  # GET /representators/new
  def new
    @representator = Representator.new
  end

  # GET /representators/1/edit
  def edit
  end

  # POST /representators
  # POST /representators.json
  def create
    @representator = Representator.new(representator_params)

    respond_to do |format|
      if @representator.save
        format.html { redirect_to @representator, notice: 'Representator was successfully created.' }
        format.json { render :show, status: :created, location: @representator }
      else
        format.html { render :new }
        format.json { render json: @representator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representators/1
  # PATCH/PUT /representators/1.json
  def update
    respond_to do |format|
      if @representator.update(representator_params)
        format.html { redirect_to @representator, notice: 'Representator was successfully updated.' }
        format.json { render :show, status: :ok, location: @representator }
      else
        format.html { render :edit }
        format.json { render json: @representator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representators/1
  # DELETE /representators/1.json
  def destroy
    @representator.destroy
    respond_to do |format|
      format.html { redirect_to representators_url, notice: 'Representator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representator
      @representator = Representator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representator_params
      params.require(:representator).permit(:name, :address, :tel)
    end
end
