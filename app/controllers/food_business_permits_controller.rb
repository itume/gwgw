class FoodBusinessPermitsController < ApplicationController
  before_action :set_food_business_permit, only: [:show, :edit, :update, :destroy]

  # GET /food_business_permits
  # GET /food_business_permits.json
  def index
    @food_business_permits = FoodBusinessPermit.all
  end

  # GET /food_business_permits/1
  # GET /food_business_permits/1.json
  def show
  end

  # GET /food_business_permits/new
  def new
    @food_business_permit = FoodBusinessPermit.new
  end

  # GET /food_business_permits/1/edit
  def edit
  end

  # POST /food_business_permits
  # POST /food_business_permits.json
  def create
    @food_business_permit = FoodBusinessPermit.new(food_business_permit_params)

    respond_to do |format|
      if @food_business_permit.save
        format.html { redirect_to @food_business_permit, notice: 'Food business permit was successfully created.' }
        format.json { render :show, status: :created, location: @food_business_permit }
      else
        format.html { render :new }
        format.json { render json: @food_business_permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_business_permits/1
  # PATCH/PUT /food_business_permits/1.json
  def update
    respond_to do |format|
      if @food_business_permit.update(food_business_permit_params)
        format.html { redirect_to @food_business_permit, notice: 'Food business permit was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_business_permit }
      else
        format.html { render :edit }
        format.json { render json: @food_business_permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_business_permits/1
  # DELETE /food_business_permits/1.json
  def destroy
    @food_business_permit.destroy
    respond_to do |format|
      format.html { redirect_to food_business_permits_url, notice: 'Food business permit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_business_permit
      @food_business_permit = FoodBusinessPermit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_business_permit_params
      params.require(:food_business_permit).permit(:office_id, :representator_id, :business_type_id)
    end
end
