class AdultsLocalexamedsController < ApplicationController
  # GET /adults_localexameds
  # GET /adults_localexameds.xml
  def index
    @adults_localexameds = AdultsLocalexamed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_localexameds }
    end
  end

  # GET /adults_localexameds/1
  # GET /adults_localexameds/1.xml
  def show
    @adults_localexamed = AdultsLocalexamed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_localexamed }
    end
  end

  # GET /adults_localexameds/new
  # GET /adults_localexameds/new.xml
  def new
    @adults_localexamed = AdultsLocalexamed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_localexamed }
    end
  end

  # GET /adults_localexameds/1/edit
  def edit
    @adults_localexamed = AdultsLocalexamed.find(params[:id])
  end

  # POST /adults_localexameds
  # POST /adults_localexameds.xml
  def create
    @adults_localexamed = AdultsLocalexamed.new(params[:adults_localexamed])

    respond_to do |format|
      if @adults_localexamed.save
        format.html { redirect_to(@adults_localexamed, :notice => 'Adults localexamed was successfully created.') }
        format.xml  { render :xml => @adults_localexamed, :status => :created, :location => @adults_localexamed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_localexamed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_localexameds/1
  # PUT /adults_localexameds/1.xml
  def update
    @adults_localexamed = AdultsLocalexamed.find(params[:id])

    respond_to do |format|
      if @adults_localexamed.update_attributes(params[:adults_localexamed])
        format.html { redirect_to(@adults_localexamed, :notice => 'Adults localexamed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_localexamed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_localexameds/1
  # DELETE /adults_localexameds/1.xml
  def destroy
    @adults_localexamed = AdultsLocalexamed.find(params[:id])
    @adults_localexamed.destroy

    respond_to do |format|
      format.html { redirect_to(adults_localexameds_url) }
      format.xml  { head :ok }
    end
  end
end
