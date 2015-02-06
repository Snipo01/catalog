class PurchaseCatalogsController < ApplicationController
  before_action :set_purchase_catalog, only: [:show, :edit, :update, :destroy]

  # GET /purchase_catalogs
  # GET /purchase_catalogs.json
  def index
    @purchase_catalogs = PurchaseCatalog.all
  end

  # GET /purchase_catalogs/1
  # GET /purchase_catalogs/1.json
  def show
  end

  # GET /purchase_catalogs/new
  def new
    @purchase_catalog = PurchaseCatalog.new
  end

  # GET /purchase_catalogs/1/edit
  def edit
  end

  # POST /purchase_catalogs
  # POST /purchase_catalogs.json
  def create
    @purchase_catalog = PurchaseCatalog.new(purchase_catalog_params)

    respond_to do |format|
      if @purchase_catalog.save
        format.html { redirect_to @purchase_catalog, notice: 'Purchase catalog was successfully created.' }
        format.json { render :show, status: :created, location: @purchase_catalog }
      else
        format.html { render :new }
        format.json { render json: @purchase_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase_catalogs/1
  # PATCH/PUT /purchase_catalogs/1.json
  def update
    respond_to do |format|
      if @purchase_catalog.update(purchase_catalog_params)
        format.html { redirect_to @purchase_catalog, notice: 'Purchase catalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_catalog }
      else
        format.html { render :edit }
        format.json { render json: @purchase_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_catalogs/1
  # DELETE /purchase_catalogs/1.json
  def destroy
    @purchase_catalog.destroy
    respond_to do |format|
      format.html { redirect_to purchase_catalogs_url, notice: 'Purchase catalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_catalog
      @purchase_catalog = PurchaseCatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_catalog_params
      params.require(:purchase_catalog).permit(:product_name, :price, :picture, :quantity_purchased, :place_of_purchase, :location_of_use)
    end
end
