class AdultsUnitsController < ApplicationController
  # GET /adults_units
  # GET /adults_units.xml
  def index
    @adults_units = AdultsUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_units }
    end
  end

  # GET /adults_units/1
  # GET /adults_units/1.xml
  def show
    @adults_unit = AdultsUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_unit }
    end
  end

  # GET /adults_units/new
  # GET /adults_units/new.xml
  def new
    @adults_unit = AdultsUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_unit }
    end
  end

  # GET /adults_units/1/edit
  def edit
    @adults_unit = AdultsUnit.find(params[:id])
  end

  # POST /adults_units
  # POST /adults_units.xml
  def create
    @adults_unit = AdultsUnit.new(params[:adults_unit])

    respond_to do |format|
      if @adults_unit.save
        format.html { redirect_to(@adults_unit, :notice => 'Adults unit was successfully created.') }
        format.xml  { render :xml => @adults_unit, :status => :created, :location => @adults_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_units/1
  # PUT /adults_units/1.xml
  def update
    @adults_unit = AdultsUnit.find(params[:id])

    respond_to do |format|
      if @adults_unit.update_attributes(params[:adults_unit])
        format.html { redirect_to(@adults_unit, :notice => 'Adults unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_units/1
  # DELETE /adults_units/1.xml
  def destroy
    @adults_unit = AdultsUnit.find(params[:id])
    @adults_unit.destroy

    respond_to do |format|
      format.html { redirect_to(adults_units_url) }
      format.xml  { head :ok }
    end
  end
end
