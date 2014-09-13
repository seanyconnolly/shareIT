class BillsController < ApplicationController
  # GET /bills
  # GET /bills.json
  def index

    #if params.include? '&'
      @bills = Bill.where(:house_account_id => params[:house_account_id], :paid => params[:paid])
   # end

    #@bills = Bill.all

    render json: @bills
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    @bill = Bill.find(params[:id])

    render json: @bill
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    @bill = Bill.find(params[:id])

    if @bill.update(params[:bill])
      head :no_content
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy

    head :no_content
  end

  private
  def bill_params
    params.require(:bill).permit(:name,:account_number, :frequency, :house_account_id, :bill_amount)
  end

end
