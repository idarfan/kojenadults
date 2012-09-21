class AdultsSeparatesController < ApplicationController
  # GET /adults_separates
  # GET /adults_separates.xml
  def index
    @adults_separates = AdultsSeparate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adults_separates }
    end
  end

  # GET /adults_separates/1
  # GET /adults_separates/1.xml
  def show
    @adults_separate = AdultsSeparate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adults_separate }
    end
  end

  # GET /adults_separates/new
  # GET /adults_separates/new.xml
  def new
    @adults_separate = AdultsSeparate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adults_separate }
    end
  end

  # GET /adults_separates/1/edit
  def edit
    @adults_separate = AdultsSeparate.find(params[:id])
  end

  # POST /adults_separates
  # POST /adults_separates.xml
  def create
    @adults_separate = AdultsSeparate.new(params[:adults_separate])

    respond_to do |format|
      if @adults_separate.save
        format.html { redirect_to(@adults_separate, :notice => 'Adults separate was successfully created.') }
        format.xml  { render :xml => @adults_separate, :status => :created, :location => @adults_separate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adults_separate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adults_separates/1
  # PUT /adults_separates/1.xml
  def update
    @adults_separate = AdultsSeparate.find(params[:id])

    respond_to do |format|
      if @adults_separate.update_attributes(params[:adults_separate])
        format.html { redirect_to(@adults_separate, :notice => 'Adults separate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adults_separate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adults_separates/1
  # DELETE /adults_separates/1.xml
  def destroy
    @adults_separate = AdultsSeparate.find(params[:id])
    @adults_separate.destroy

    respond_to do |format|
      format.html { redirect_to(adults_separates_url) }
      format.xml  { head :ok }
    end
  end
end
