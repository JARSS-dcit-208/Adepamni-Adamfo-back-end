class DressesController < ApiController
  before_action :set_customer
  before_action :set_dress, only: %i[ show edit update destroy ]

  # GET /customers or /customers.json
  def index
    @dresses = @customer.dresses.all
  end

  # GET /customers/1 or /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers or /customers.json
  def create
    @dress = @customer.dresses.new(dress_params)
    @dress.user = current_user

    respond_to do |format|
      if @dress.save
        @message = "Customer addess successfully."
        format.html { redirect_to customer_dress_url(@customer, @dress), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @dress }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    respond_to do |format|
      if @dress.update(dress_params)
        @message = "Customer updated successfully."
        format.html { redirect_to customer_dress_url(@customer, @dress), notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @dress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def set_dress
      @dress = Dress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dress_params
      params.fetch(:dress, {}).permit!
    end
end
