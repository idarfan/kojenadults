class AdultsWhatexamedsController < ApplicationController
  # GET /adults_whatexameds
  # GET /adults_whatexameds.xml
  def index
    @adults_whatexameds = AdultsWhatexamed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_whatexameds }
    end
  end

  # GET /adults_whatexameds/1
  # GET /adults_whatexameds/1.xml
  def show
    @adults_whatexamed = AdultsWhatexamed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_whatexamed }
    end
  end

  # GET /adults_whatexameds/new
  # GET /adults_whatexameds/new.xml
  def new
    @adults_whatexamed = AdultsWhatexamed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_whatexamed }
    end
  end

  # GET /adults_whatexameds/1/edit
  def edit
    @adults_whatexamed = AdultsWhatexamed.find(params[:id])
  end

  # POST /adults_whatexameds
  # POST /adults_whatexameds.xml
  def create
    @adults_whatexamed = AdultsWhatexamed.new(params[:adults_whatexamed])

    respond_to do |format|
      if @adults_whatexamed.save
        format.html { redirect_to(@adults_whatexamed, :notice => 'Adults whatexamed was successfully created.') }
        format.xml  { render :xml => @adults_whatexamed, :status => :created, :location => @adults_whatexamed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_whatexamed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_whatexameds/1
  # PUT /adults_whatexameds/1.xml
  def update
    @adults_whatexamed = AdultsWhatexamed.find(params[:id])

    respond_to do |format|
      if @adults_whatexamed.update_attributes(params[:adults_whatexamed])
        format.html { redirect_to(@adults_whatexamed, :notice => 'Adults whatexamed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_whatexamed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_whatexameds/1
  # DELETE /adults_whatexameds/1.xml
  def destroy
    @adults_whatexamed = AdultsWhatexamed.find(params[:id])
    @adults_whatexamed.destroy

    respond_to do |format|
      format.html { redirect_to(adults_whatexameds_url) }
      format.xml  { head :ok }
    end
  end
end
