class BeesController < ApplicationController
  # GET /bees
  # GET /bees.json
  def index
    @bees = Bee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bees }
    end
  end

  # GET /bees/1
  # GET /bees/1.json
  def show
    @bee = Bee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bee }
    end
  end

  # GET /bees/new
  # GET /bees/new.json
  def new
    @bee = Bee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bee }
    end
  end

  # GET /bees/1/edit
  def edit
    @bee = Bee.find(params[:id])
  end

  # POST /bees
  # POST /bees.json
  def create
    @bee = Bee.new(params[:bee])

    respond_to do |format|
      if @bee.save
        format.html { redirect_to @bee, notice: 'Bee was successfully created.' }
        format.json { render json: @bee, status: :created, location: @bee }
      else
        format.html { render action: "new" }
        format.json { render json: @bee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bees/1
  # PUT /bees/1.json
  def update
    @bee = Bee.find(params[:id])

    respond_to do |format|
      if @bee.update_attributes(params[:bee])
        format.html { redirect_to @bee, notice: 'Bee was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bees/1
  # DELETE /bees/1.json
  def destroy
    @bee = Bee.find(params[:id])
    @bee.destroy

    respond_to do |format|
      format.html { redirect_to bees_url }
      format.json { head :ok }
    end
  end
end
