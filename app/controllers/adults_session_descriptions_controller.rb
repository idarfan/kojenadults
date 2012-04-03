class AdultsSessionDescriptionsController < ApplicationController
  # GET /adults_session_descriptions
  # GET /adults_session_descriptions.xml
  def index
    @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_session_descriptions }
    end
  end

  # GET /adults_session_descriptions/1
  # GET /adults_session_descriptions/1.xml
  def show
    @adults_session_description = AdultsSessionDescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_session_description }
    end
  end

  # GET /adults_session_descriptions/new
  # GET /adults_session_descriptions/new.xml
  def new
    @adults_session_description = AdultsSessionDescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_session_description }
    end
  end

  # GET /adults_session_descriptions/1/edit
  def edit
    @adults_session_description = AdultsSessionDescription.find(params[:id])
  end

  # POST /adults_session_descriptions
  # POST /adults_session_descriptions.xml
  def create
    @adults_session_description = AdultsSessionDescription.new(params[:adults_session_description])

    respond_to do |format|
      if @adults_session_description.save
        format.html { redirect_to(@adults_session_description, :notice => 'Adults session description was successfully created.') }
        format.xml  { render :xml => @adults_session_description, :status => :created, :location => @adults_session_description }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_session_description.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_session_descriptions/1
  # PUT /adults_session_descriptions/1.xml
  def update
    @adults_session_description = AdultsSessionDescription.find(params[:id])

    respond_to do |format|
      if @adults_session_description.update_attributes(params[:adults_session_description])
        format.html { redirect_to(@adults_session_description, :notice => 'Adults session description was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_session_description.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_session_descriptions/1
  # DELETE /adults_session_descriptions/1.xml
  def destroy
    @adults_session_description = AdultsSessionDescription.find(params[:id])
    @adults_session_description.destroy

    respond_to do |format|
      format.html { redirect_to(adults_session_descriptions_url) }
      format.xml  { head :ok }
    end
  end
end
