class AdultsHowyouknowusController < ApplicationController
  # GET /adults_howyouknowus
  # GET /adults_howyouknowus.xml
  def index
    @adults_howyouknowus = AdultsHowyouknowu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_howyouknowus }
    end
  end

  # GET /adults_howyouknowus/1
  # GET /adults_howyouknowus/1.xml
  def show
    @adults_howyouknowu = AdultsHowyouknowu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_howyouknowu }
    end
  end

  # GET /adults_howyouknowus/new
  # GET /adults_howyouknowus/new.xml
  def new
    @adults_howyouknowu = AdultsHowyouknowu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_howyouknowu }
    end
  end

  # GET /adults_howyouknowus/1/edit
  def edit
    @adults_howyouknowu = AdultsHowyouknowu.find(params[:id])
  end

  # POST /adults_howyouknowus
  # POST /adults_howyouknowus.xml
  def create
    @adults_howyouknowu = AdultsHowyouknowu.new(params[:adults_howyouknowu])

    respond_to do |format|
      if @adults_howyouknowu.save
        format.html { redirect_to(@adults_howyouknowu, :notice => 'Adults howyouknowu was successfully created.') }
        format.xml  { render :xml => @adults_howyouknowu, :status => :created, :location => @adults_howyouknowu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_howyouknowu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_howyouknowus/1
  # PUT /adults_howyouknowus/1.xml
  def update
    @adults_howyouknowu = AdultsHowyouknowu.find(params[:id])

    respond_to do |format|
      if @adults_howyouknowu.update_attributes(params[:adults_howyouknowu])
        format.html { redirect_to(@adults_howyouknowu, :notice => 'Adults howyouknowu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_howyouknowu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_howyouknowus/1
  # DELETE /adults_howyouknowus/1.xml
  def destroy
    @adults_howyouknowu = AdultsHowyouknowu.find(params[:id])
    @adults_howyouknowu.destroy

    respond_to do |format|
      format.html { redirect_to(adults_howyouknowus_url) }
      format.xml  { head :ok }
    end
  end
end
