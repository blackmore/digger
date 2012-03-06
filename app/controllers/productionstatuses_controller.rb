class ProductionstatusesController < ApplicationController
  # GET /productionstatuses
  # GET /productionstatuses.json
  def index
    @productionstatuses = Productionstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productionstatuses }
    end
  end

  # GET /productionstatuses/1
  # GET /productionstatuses/1.json
  def show
    @productionstatus = Productionstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productionstatus }
    end
  end

  # GET /productionstatuses/new
  # GET /productionstatuses/new.json
  def new
    @productionstatus = Productionstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productionstatus }
    end
  end

  # GET /productionstatuses/1/edit
  def edit
    @productionstatus = Productionstatus.find(params[:id])
  end

  # POST /productionstatuses
  # POST /productionstatuses.json
  def create
    @productionstatus = Productionstatus.new(params[:productionstatus])

    respond_to do |format|
      if @productionstatus.save
        format.html { redirect_to @productionstatus, notice: 'Productionstatus was successfully created.' }
        format.json { render json: @productionstatus, status: :created, location: @productionstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @productionstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productionstatuses/1
  # PUT /productionstatuses/1.json
  def update
    @productionstatus = Productionstatus.find(params[:id])

    respond_to do |format|
      if @productionstatus.update_attributes(params[:productionstatus])
        format.html { redirect_to @productionstatus, notice: 'Productionstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productionstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productionstatuses/1
  # DELETE /productionstatuses/1.json
  def destroy
    @productionstatus = Productionstatus.find(params[:id])
    @productionstatus.destroy

    respond_to do |format|
      format.html { redirect_to productionstatuses_url }
      format.json { head :no_content }
    end
  end
end
