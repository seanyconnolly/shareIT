class TenantsController < ApplicationController
  # GET /tenants
  # GET /tenants.json
  def index
    @tenants = Tenant.all

    render json: @tenants
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
    params.require(:tenant).permit(:house_account_id,:first_name, :last_name, :age, :account_owner, :bill_payer)
  end


end
