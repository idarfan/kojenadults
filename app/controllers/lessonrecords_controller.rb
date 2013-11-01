class LessonrecordsController < ApplicationController
  before_filter :authorize
  # GET /lessonrecords
  # GET /lessonrecords.xml
  def index
    @lessonrecords = Lessonrecord.all
    @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lessonrecords }
    end
  end

  # GET /lessonrecords/1
  # GET /lessonrecords/1.xml
  def show
    @lessonrecord = Lessonrecord.find(params[:id])
     @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lessonrecord }
    end
  end

  # GET /lessonrecords/new
  # GET /lessonrecords/new.xml
  def new
    @lessonrecord = Lessonrecord.new
     @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lessonrecord }
    end
  end

  # GET /lessonrecords/1/edit
  def edit
    @lessonrecord = Lessonrecord.find(params[:id])
     @kojenadults = Kojenadult.all
  end

  # POST /lessonrecords
  # POST /lessonrecords.xml
  def create
    @lessonrecord = Lessonrecord.new(params[:lessonrecord])    
     @kojenadults = Kojenadult.all

    respond_to do |format|
      if @lessonrecord.save
        format.html { redirect_to(@lessonrecord, :notice => 'Lessonrecord was successfully created.') }
        format.xml  { render :xml => @lessonrecord, :status => :created, :location => @lessonrecord }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lessonrecord.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lessonrecords/1
  # PUT /lessonrecords/1.xml
  def update
    @lessonrecord = Lessonrecord.find(params[:id])
    @kojenadults = Kojenadult.all

    respond_to do |format|
      if @lessonrecord.update_attributes(params[:lessonrecord])
        format.html { redirect_to(@lessonrecord, :notice => 'Lessonrecord was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lessonrecord.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessonrecords/1
  # DELETE /lessonrecords/1.xml
  def destroy
    @lessonrecord = Lessonrecord.find(params[:id])
     @kojenadults = Kojenadult.all
    @lessonrecord.destroy

    respond_to do |format|
      format.html { redirect_to(lessonrecords_url) }
      format.xml  { head :ok }
    end
  end
end
