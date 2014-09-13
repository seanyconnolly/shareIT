class HouseAccountsController < ApplicationController
  # GET /house_accounts
  # GET /house_accounts.json
  def index
    @house_accounts = HouseAccount.all

    render json: @house_accounts
  end

  # GET /house_accounts/1
  # GET /house_accounts/1.json
  def show
    @house_account = HouseAccount.find(params[:id])

    render json: @house_account
  end

  # POST /house_accounts
  # POST /house_accounts.json
  def create
    @house_account = HouseAccount.new(house_account_params)
      puts "got params #{house_account_params}"
    if @house_account.save
      render json: @house_account, status: :created, location: @house_account
    else
      render json: @house_account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /house_accounts/1
  # PATCH/PUT /house_accounts/1.json
  def update
    @house_account = HouseAccount.find(params[:id])

    if @house_account.update(params[:house_account])
      head :no_content
    else
      render json: @house_account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /house_accounts/1
  # DELETE /house_accounts/1.json
  def destroy
    @house_account = HouseAccount.find(params[:id])
    @house_account.destroy

    head :no_content
  end

  private
  def house_account_params
    params.require(:house_account).permit(:name,:building_number, :address_line1, :address_line2, :county, :country, :tenant_Id)
  end


end
