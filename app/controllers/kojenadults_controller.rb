# encoding: utf-8
class KojenadultsController < ApplicationController
  before_filter :authorize, :except => [:data]
  
  def data
    @kojenadults = Kojenadult.all
    @kojenadult_classes = KojenadultClasse.all   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadults }      
      format.json { render :json => @kojenadults.to_json }
    end
  end
  #skip_before_filter :authorize
  # GET /kojenadults
  # GET /kojenadults.xml
  def index
    #@kojenadults = Kojenadult.all 加入分頁機制
    @kojenadults = Kojenadult.paginate(:page => params[:page], :per_page => 15)
    @kojenadult_classes = KojenadultClasse.all
    @adults_session_descriptions = AdultsSessionDescription.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kojenadults }
      format.json { render :json => @kojenadults.to_json }
    end
  end

  # GET /kojenadults/1
  # GET /kojenadults/1.xml
  # 新增 @kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
  # 只能使用學生id 不能用身份證號碼,因為身份證號碼不是整數欄  
  def show 
    @kojenadult = Kojenadult.find(params[:id])
    @kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
    @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kojenadult }    
    end
  end

  # GET /kojenadults/new
  # GET /kojenadults/new.xml
  def new 
    #raise Exception.new(params.inspect)
    @kojenadult = Kojenadult.new
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @kojenadult_classes = KojenadultClasse.all    
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
     @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      format.html # new.html.erb      
      format.xml  { render :xml => @kojenadult }
      #format.json { render :json => @kojenadult }    
    end
  end

  # GET /kojenadults/1/edit
  def edit
    return unless user_level2 #增加權限控管    
    @kojenadult = Kojenadult.find(params[:id]) 
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @kojenadult_classes = KojenadultClasse.all
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
    @adults_session_descriptions = AdultsSessionDescription.all
  end

  # POST /kojenadults
  # POST /kojenadults.xml
  def create
    @kojenadult = Kojenadult.new(params[:kojenadult])
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @kojenadult_classes = KojenadultClasse.all
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
    @kojenadult.keyin = current_user.name
    @adults_session_descriptions = AdultsSessionDescription.all
    #raise Exception.new(params.inspect)  
    #檢視表單傳送些什麼參數，檢查完後再予以註銷

    respond_to do |format|
      if @kojenadult.save
        format.html { redirect_to(@kojenadult, :notice => 'Kojenadult was successfully created.') }
        format.xml  { render :xml => @kojenadult, :status => :created, :location => @kojenadult }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kojenadult.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kojenadults/1
  # PUT /kojenadults/1.xml
  def update
    return unless user_level2 #增加權限控管
    @kojenadult = Kojenadult.find(params[:id])
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @kojenadult_classes = KojenadultClasse.all
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
    @adults_session_descriptions 

    respond_to do |format|
      if @kojenadult.update_attributes(params[:kojenadult])
        format.html { redirect_to(@kojenadult, :notice => 'Kojenadult was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kojenadult.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kojenadults/1
  # DELETE /kojenadults/1.xml
  def destroy
    return unless user_level1 
    #增加權限控管
    @kojenadult = Kojenadult.find(params[:id])
    @kojenadult.destroy
    @adults_session_descriptions = AdultsSessionDescription.all

    respond_to do |format|
      format.html { redirect_to(kojenadults_url) }
      format.xml  { head :ok }
    end
  end
  #底下的是參考性寫法
  def myjobs
    @ohmyjobs = AdultsWhylearn.all.map{|im|[im.reason_desc , im.id]}
    render :layout =>"test_layout"
  end
  def show_myjobs
    ohmyjobs = params[:jobs].to_i   
  end
  # 寫在controller 裏的方法叫actions
  def student_id_check
    if Student.count(:conditions => ["student_id = ?" , params[:student][:student_id]]) == 0
      render(:json => true.to_json)
    else
      render(:json => false.to_json)
    end
  end
end