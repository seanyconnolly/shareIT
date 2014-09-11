class SuperusersController < ApplicationController
  # GET /superusers
  # GET /superusers.json
  def index
    @superusers = Superuser.all

    render json: @superusers
  end

  # GET /superusers/1
  # GET /superusers/1.json
  def show
    @superuser = Superuser.find(params[:id])

    render json: @superuser
  end

  # POST /superusers
  # POST /superusers.json
  def create
    @superuser = Superuser.new(params[:superuser])

    if @superuser.save
      render json: @superuser, status: :created, location: @superuser
    else
      render json: @superuser.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /superusers/1
  # PATCH/PUT /superusers/1.json
  def update
    @superuser = Superuser.find(params[:id])

    if @superuser.update(params[:superuser])
      head :no_content
    else
      render json: @superuser.errors, status: :unprocessable_entity
    end
  end

  # DELETE /superusers/1
  # DELETE /superusers/1.json
  def destroy
    @superuser = Superuser.find(params[:id])
    @superuser.destroy

    head :no_content
  end
end
