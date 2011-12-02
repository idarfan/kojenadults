class AdultsGraduatedsController < ApplicationController
  # GET /adults_graduateds
  # GET /adults_graduateds.xml
  def index
    @adults_graduateds = AdultsGraduated.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_graduateds }
    end
  end

  # GET /adults_graduateds/1
  # GET /adults_graduateds/1.xml
  def show
    @adults_graduated = AdultsGraduated.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_graduated }
    end
  end

  # GET /adults_graduateds/new
  # GET /adults_graduateds/new.xml
  def new
    @adults_graduated = AdultsGraduated.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_graduated }
    end
  end

  # GET /adults_graduateds/1/edit
  def edit
    @adults_graduated = AdultsGraduated.find(params[:id])
  end

  # POST /adults_graduateds
  # POST /adults_graduateds.xml
  def create
    @adults_graduated = AdultsGraduated.new(params[:adults_graduated])

    respond_to do |format|
      if @adults_graduated.save
        format.html { redirect_to(@adults_graduated, :notice => 'Adults graduated was successfully created.') }
        format.xml  { render :xml => @adults_graduated, :status => :created, :location => @adults_graduated }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_graduated.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_graduateds/1
  # PUT /adults_graduateds/1.xml
  def update
    @adults_graduated = AdultsGraduated.find(params[:id])

    respond_to do |format|
      if @adults_graduated.update_attributes(params[:adults_graduated])
        format.html { redirect_to(@adults_graduated, :notice => 'Adults graduated was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_graduated.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_graduateds/1
  # DELETE /adults_graduateds/1.xml
  def destroy
    @adults_graduated = AdultsGraduated.find(params[:id])
    @adults_graduated.destroy

    respond_to do |format|
      format.html { redirect_to(adults_graduateds_url) }
      format.xml  { head :ok }
    end
  end
end
