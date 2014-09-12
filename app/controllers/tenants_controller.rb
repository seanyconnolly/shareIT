class TenantsController < ApplicationController
  # GET /tenants
  # GET /tenants.json
  def index
    puts 'showing index'
    @tenants = Tenant.where(:house_account_id => 1)

    render json: @tenants

    #respond_to do |format|
    #  format.xml { render xml: @tenants }
    #end
  end

  # GET /tenants/1
  # GET /tenants/1.json
  def show

    @tenant = Tenant.find(params[:id])

    render json: @tenant
  end

  # POST /tenants
  # POST /tenants.json
  def create
    puts "well boy"
    puts ""
    @tenant = Tenant.new(tenant_params)

    if @tenant.save
      render json: @tenant, status: :created, location: @tenant
    else
      render json: @tenant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tenants/1
  # PATCH/PUT /tenants/1.json
  def update
    @tenant = Tenant.find(params[:id])

    if @tenant.update(params[:tenant])
      head :no_content
    else
      render json: @tenant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tenants/1
  # DELETE /tenants/1.json
  def destroy
    @tenant = Tenant.find(params[:id])
    @tenant.destroy

    head :no_content
  end


  private

  def tenant_params
    # It's mandatory to specify the nested attributes that should be whitelisted.
    # If you use `permit` with just the key that points to the nested attributes hash,
    # it will return an empty hash.
    params.require(:tenant).permit(:tenantId, :houseAccountId, :firstName, :lastName)
  end
end
