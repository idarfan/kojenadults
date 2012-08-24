class AdultsClasstypesController < ApplicationController
  # GET /adults_classtypes
  # GET /adults_classtypes.xml
  def index
    @adults_classtypes = AdultsClasstype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_classtypes }
    end
  end

  # GET /adults_classtypes/1
  # GET /adults_classtypes/1.xml
  def show
    @adults_classtype = AdultsClasstype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_classtype }
    end
  end

  # GET /adults_classtypes/new
  # GET /adults_classtypes/new.xml
  def new
    @adults_classtype = AdultsClasstype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_classtype }
    end
  end

  # GET /adults_classtypes/1/edit
  def edit
    @adults_classtype = AdultsClasstype.find(params[:id])
  end

  # POST /adults_classtypes
  # POST /adults_classtypes.xml
  def create
    @adults_classtype = AdultsClasstype.new(params[:adults_classtype])

    respond_to do |format|
      if @adults_classtype.save
        format.html { redirect_to(@adults_classtype, :notice => 'Adults classtype was successfully created.') }
        format.xml  { render :xml => @adults_classtype, :status => :created, :location => @adults_classtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_classtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_classtypes/1
  # PUT /adults_classtypes/1.xml
  def update
    @adults_classtype = AdultsClasstype.find(params[:id])

    respond_to do |format|
      if @adults_classtype.update_attributes(params[:adults_classtype])
        format.html { redirect_to(@adults_classtype, :notice => 'Adults classtype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_classtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_classtypes/1
  # DELETE /adults_classtypes/1.xml
  def destroy
    @adults_classtype = AdultsClasstype.find(params[:id])
    @adults_classtype.destroy

    respond_to do |format|
      format.html { redirect_to(adults_classtypes_url) }
      format.xml  { head :ok }
    end
  end
end
