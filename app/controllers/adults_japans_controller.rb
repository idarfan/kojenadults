class AdultsJapansController < ApplicationController
  # GET /adults_japans
  # GET /adults_japans.xml
  def index
    @adults_japans = AdultsJapan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_japans }
    end
  end

  # GET /adults_japans/1
  # GET /adults_japans/1.xml
  def show
    @adults_japan = AdultsJapan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_japan }
    end
  end

  # GET /adults_japans/new
  # GET /adults_japans/new.xml
  def new
    @adults_japan = AdultsJapan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_japan }
    end
  end

  # GET /adults_japans/1/edit
  def edit
    @adults_japan = AdultsJapan.find(params[:id])
  end

  # POST /adults_japans
  # POST /adults_japans.xml
  def create
    @adults_japan = AdultsJapan.new(params[:adults_japan])

    respond_to do |format|
      if @adults_japan.save
        format.html { redirect_to(@adults_japan, :notice => 'Adults japan was successfully created.') }
        format.xml  { render :xml => @adults_japan, :status => :created, :location => @adults_japan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_japan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_japans/1
  # PUT /adults_japans/1.xml
  def update
    @adults_japan = AdultsJapan.find(params[:id])

    respond_to do |format|
      if @adults_japan.update_attributes(params[:adults_japan])
        format.html { redirect_to(@adults_japan, :notice => 'Adults japan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_japan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_japans/1
  # DELETE /adults_japans/1.xml
  def destroy
    @adults_japan = AdultsJapan.find(params[:id])
    @adults_japan.destroy

    respond_to do |format|
      format.html { redirect_to(adults_japans_url) }
      format.xml  { head :ok }
    end
  end
end
