class ServicesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  # GET /services
  # GET /services.json
  def index
    @services = Service.where(id: (1..9))
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service.macro_service, notice: 'service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_url, notice: 'service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update_all
  #   params['price'].keys.each do |id|
  #     @price = Price.find(id.to_i)
  #     @price.update_attributes(params['price'][id].permit(:price))
  #   end
  #   redirect_to(prices_url)
  # end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:id, :price, :name, :macro_service_id, micro_services_attributes:[:id, :price, :name, :macro_service_id])
    end
end
