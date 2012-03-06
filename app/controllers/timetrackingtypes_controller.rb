class TimetrackingtypesController < ApplicationController
  # GET /timetrackingtypes
  # GET /timetrackingtypes.json
  def index
    @timetrackingtypes = Timetrackingtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timetrackingtypes }
    end
  end

  # GET /timetrackingtypes/1
  # GET /timetrackingtypes/1.json
  def show
    @timetrackingtype = Timetrackingtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timetrackingtype }
    end
  end

  # GET /timetrackingtypes/new
  # GET /timetrackingtypes/new.json
  def new
    @timetrackingtype = Timetrackingtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timetrackingtype }
    end
  end

  # GET /timetrackingtypes/1/edit
  def edit
    @timetrackingtype = Timetrackingtype.find(params[:id])
  end

  # POST /timetrackingtypes
  # POST /timetrackingtypes.json
  def create
    @timetrackingtype = Timetrackingtype.new(params[:timetrackingtype])

    respond_to do |format|
      if @timetrackingtype.save
        format.html { redirect_to @timetrackingtype, notice: 'Timetrackingtype was successfully created.' }
        format.json { render json: @timetrackingtype, status: :created, location: @timetrackingtype }
      else
        format.html { render action: "new" }
        format.json { render json: @timetrackingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timetrackingtypes/1
  # PUT /timetrackingtypes/1.json
  def update
    @timetrackingtype = Timetrackingtype.find(params[:id])

    respond_to do |format|
      if @timetrackingtype.update_attributes(params[:timetrackingtype])
        format.html { redirect_to @timetrackingtype, notice: 'Timetrackingtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timetrackingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timetrackingtypes/1
  # DELETE /timetrackingtypes/1.json
  def destroy
    @timetrackingtype = Timetrackingtype.find(params[:id])
    @timetrackingtype.destroy

    respond_to do |format|
      format.html { redirect_to timetrackingtypes_url }
      format.json { head :no_content }
    end
  end
end
