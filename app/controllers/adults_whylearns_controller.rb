class AdultsWhylearnsController < ApplicationController
  # GET /adults_whylearns
  # GET /adults_whylearns.xml
  def index
    @adults_whylearns = AdultsWhylearn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_whylearns }
    end
  end

  # GET /adults_whylearns/1
  # GET /adults_whylearns/1.xml
  def show
    @adults_whylearn = AdultsWhylearn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_whylearn }
    end
  end

  # GET /adults_whylearns/new
  # GET /adults_whylearns/new.xml
  def new
    @adults_whylearn = AdultsWhylearn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_whylearn }
    end
  end

  # GET /adults_whylearns/1/edit
  def edit
    @adults_whylearn = AdultsWhylearn.find(params[:id])
  end

  # POST /adults_whylearns
  # POST /adults_whylearns.xml
  def create
    @adults_whylearn = AdultsWhylearn.new(params[:adults_whylearn])

    respond_to do |format|
      if @adults_whylearn.save
        format.html { redirect_to(@adults_whylearn, :notice => 'Adults whylearn was successfully created.') }
        format.xml  { render :xml => @adults_whylearn, :status => :created, :location => @adults_whylearn }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_whylearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_whylearns/1
  # PUT /adults_whylearns/1.xml
  def update
    @adults_whylearn = AdultsWhylearn.find(params[:id])

    respond_to do |format|
      if @adults_whylearn.update_attributes(params[:adults_whylearn])
        format.html { redirect_to(@adults_whylearn, :notice => 'Adults whylearn was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_whylearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_whylearns/1
  # DELETE /adults_whylearns/1.xml
  def destroy
    @adults_whylearn = AdultsWhylearn.find(params[:id])
    @adults_whylearn.destroy

    respond_to do |format|
      format.html { redirect_to(adults_whylearns_url) }
      format.xml  { head :ok }
    end
  end
end
