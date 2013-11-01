# encoding: utf-8
class KojenadultClassesController < ApplicationController
  before_filter :authorize
  #skip_before_filter :authorize
  # GET /kojenadult_classes
  # GET /kojenadult_classes.xml
  def index
    @kojenadult_class = KojenadultClasse.paginate(:page => params[:page], :per_page => 10) 
    #@kojenadult_classes = KojenadultClasse.all
    @adults_session_descriptions = AdultsSessionDescription.all
    @kojenadults = Kojenadult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadult_classes }
    end
  end

  # GET /kojenadult_classes/1
  # GET /kojenadult_classes/1.xml
  def show
    @kojenadult_class = KojenadultClasse.find(params[:id])
    @adults_session_descriptions = AdultsSessionDescription.all
    #@kojenadults = Kojenadult.where("student_id = #{@kojenadult_class.student_id}")
    #@kojenadult = Kojenadult.find(params[:student_id])
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult_class }
    end
  end

  # GET /kojenadult_classes/new
  # GET /kojenadult_classes/new.xml
  def new
    @kojenadult_class = KojenadultClasse.new
    @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kojenadult_class }
    end
  end

  # GET /kojenadult_classes/1/edit
  def edit       
    @kojenadult_class = KojenadultClasse.find(params[:id])
  end

  # POST /kojenadult_classes
  # POST /kojenadult_classes.xml
  def create    
    @kojenadult_class = KojenadultClasse.new(params[:kojenadult_classe])
    @adults_session_descriptions = AdultsSessionDescription.all
    @kojenadult = Kojenadult.where(:student_id => @kojenadult_class.student_id).first
    #raise Exception.new [student_id, Kojenadult.where(:student_id => student_id)].inspect
    #raise Exception.new [student_id, Kojenadult.where(:student_id => @kojenadult.student_id)].inspect
    if @kojenadult
     @kojenadult_class.kojenadult_id = @kojenadult.id
     #如果kojenadult_class裏的kojenadult_id 等於 @kojenadult.id則執行下述動作
      respond_to do |format|
        if @kojenadult_class.save
          format.html { redirect_to(@kojenadult_class, :notice => 'Kojenadult classe was successfully created.') }
          format.xml  { render :xml => @kojenadult_class, :status => :created, :location => @kojenadult_class }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @kojenadult_class.errors, :status => :unprocessable_entity }
        end
      end
    else
      flash[:notice] = "查無該筆學生id記錄！"
      redirect_to :action => :index
    end 
  end

  # PUT /kojenadult_classes/1
  # PUT /kojenadult_classes/1.xml
  def update    
    @kojenadult_class = KojenadultClasse.find(params[:id])
    @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      if @kojenadult_class.update_attributes(params[:kojenadult_classe])
        format.html { redirect_to(@kojenadult_class, :notice => 'Kojenadult classe was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadult_classes/1
  # DELETE /kojenadult_classes/1.xml
  def destroy
    return unless classes_level1 #增加權限控管 
    @kojenadult_class = KojenadultClasse.find(params[:id])
    @kojenadult_class.destroy

    respond_to do |format|
      format.html { redirect_to(kojenadult_classes_url) }
      format.xml  { head :ok }
    end
  end  
end