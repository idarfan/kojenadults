# encoding: utf-8
class LessonrecordsController < ApplicationController
  before_filter :authorize
  # GET /lessonrecords
  # GET /lessonrecords.xml
  def index
    @lessonrecords = Lessonrecord.paginate(:page => params[:page], :per_page => 10) 
    @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lessonrecords }
    end
  end

  # GET /lessonrecords/1
  # GET /lessonrecords/1.xml
  def show
    @lessonrecords = Lessonrecord.find(params[:id])
    #@kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lessonrecords }
    end
  end

  # GET /lessonrecords/new
  # GET /lessonrecords/new.xml
  def new
    @lessonrecords = Lessonrecord.new
    @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lessonrecords }
    end
  end

  # GET /lessonrecords/1/edit
  def edit
    @lessonrecords = Lessonrecord.find(params[:id])
    @kojenadults = Kojenadult.all
  end

  # POST /lessonrecords
  # POST /lessonrecords.xml
  def create    
    @lessonrecords = Lessonrecord.new(params[:lessonrecord]) 
    @kojenadult = Kojenadult.where(:student_id => @lessonrecords.student_id).first
    if @kojenadult
      @lessonrecords.kojenadult_id = @kojenadult.id     

      respond_to do |format|
        if @lessonrecords.save
          format.html { redirect_to(@lessonrecords, :notice => 'Lessonrecord was successfully created.') }
          format.xml  { render :xml => @lessonrecords, :status => :created, :location => @lessonrecords }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @lessonrecords.errors, :status => :unprocessable_entity }
        end
      end    
    else
      flash[:notice] = "查無該筆學生id記錄！"
      redirect_to :action => :index    
    end
  end

  # PUT /lessonrecords/1
  # PUT /lessonrecords/1.xml
  def update
    @lessonrecords = Lessonrecord.find(params[:id])
    @kojenadults = Kojenadult.all

    respond_to do |format|
      if @lessonrecords.update_attributes(params[:lessonrecord])
        format.html { redirect_to(@lessonrecords, :notice => 'Lessonrecord was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lessonrecords.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessonrecords/1
  # DELETE /lessonrecords/1.xml
  def destroy
    @lessonrecords = Lessonrecord.find(params[:id])
    @kojenadults = Kojenadult.all
    @lessonrecords.destroy

    respond_to do |format|
      format.html { redirect_to(lessonrecords_url) }
      format.xml  { head :ok }
    end
  end  
  
  def search
    @lessonrecords = Lessonrecord.search do
      keywords params[:query]
      paginate :page => 1, :per_page => 10, :offset => 0   
    end.results

    respond_to do |format|
      format.html { render :action => "index" }
      format.xml { render :xml => @lessonrecords }
    end
  end
end