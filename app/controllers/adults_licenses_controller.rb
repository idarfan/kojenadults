class AdultsLicensesController < ApplicationController
  # GET /adults_licenses
  # GET /adults_licenses.xml
  def index
    @adults_licenses = AdultsLicense.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_licenses }
    end
  end

  # GET /adults_licenses/1
  # GET /adults_licenses/1.xml
  def show
    @adults_license = AdultsLicense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_license }
    end
  end

  # GET /adults_licenses/new
  # GET /adults_licenses/new.xml
  def new
    @adults_license = AdultsLicense.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_license }
    end
  end

  # GET /adults_licenses/1/edit
  def edit
    @adults_license = AdultsLicense.find(params[:id])
  end

  # POST /adults_licenses
  # POST /adults_licenses.xml
  def create
    @adults_license = AdultsLicense.new(params[:adults_license])

    respond_to do |format|
      if @adults_license.save
        format.html { redirect_to(@adults_license, :notice => 'Adults license was successfully created.') }
        format.xml  { render :xml => @adults_license, :status => :created, :location => @adults_license }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_license.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_licenses/1
  # PUT /adults_licenses/1.xml
  def update
    @adults_license = AdultsLicense.find(params[:id])

    respond_to do |format|
      if @adults_license.update_attributes(params[:adults_license])
        format.html { redirect_to(@adults_license, :notice => 'Adults license was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_license.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_licenses/1
  # DELETE /adults_licenses/1.xml
  def destroy
    @adults_license = AdultsLicense.find(params[:id])
    @adults_license.destroy

    respond_to do |format|
      format.html { redirect_to(adults_licenses_url) }
      format.xml  { head :ok }
    end
  end
end
