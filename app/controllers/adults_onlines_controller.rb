class AdultsOnlinesController < ApplicationController
  # GET /adults_onlines
  # GET /adults_onlines.xml
  def index
    @adults_onlines = AdultsOnline.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_onlines }
    end
  end

  # GET /adults_onlines/1
  # GET /adults_onlines/1.xml
  def show
    @adults_online = AdultsOnline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_online }
    end
  end

  # GET /adults_onlines/new
  # GET /adults_onlines/new.xml
  def new
    @adults_online = AdultsOnline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_online }
    end
  end

  # GET /adults_onlines/1/edit
  def edit
    @adults_online = AdultsOnline.find(params[:id])
  end

  # POST /adults_onlines
  # POST /adults_onlines.xml
  def create
    @adults_online = AdultsOnline.new(params[:adults_online])

    respond_to do |format|
      if @adults_online.save
        format.html { redirect_to(@adults_online, :notice => 'Adults online was successfully created.') }
        format.xml  { render :xml => @adults_online, :status => :created, :location => @adults_online }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_online.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_onlines/1
  # PUT /adults_onlines/1.xml
  def update
    @adults_online = AdultsOnline.find(params[:id])

    respond_to do |format|
      if @adults_online.update_attributes(params[:adults_online])
        format.html { redirect_to(@adults_online, :notice => 'Adults online was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_online.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_onlines/1
  # DELETE /adults_onlines/1.xml
  def destroy
    @adults_online = AdultsOnline.find(params[:id])
    @adults_online.destroy

    respond_to do |format|
      format.html { redirect_to(adults_onlines_url) }
      format.xml  { head :ok }
    end
  end
end
