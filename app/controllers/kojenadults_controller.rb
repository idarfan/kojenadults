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
    @kojenadults = Kojenadult.paginate(:page => params[:page], :per_page => 10)    
    @kojenadult_classes = KojenadultClasse.all    
    
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
  #if @kojenadult_classes == nil #new adding
  #      format.html { redirect_to(@kojenadult, :notice => 'Kojenadult_classes is none.') }
  #      format.xml  { render :xml => @kojenadult, :status => :created, :location => @kojenadult }
  #    else #new adding
  if @kojenadult_classes == nil #new adding
    redirect_to(@kojenadult, :notice => 'Kojenadult_classes is none.')
  end
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
  
  def search    
    #@level = Incomelevel.all.map{|im|[im.reason_desc , im.id]}    #test ok by rails c
    #@howuknowu = Howuknowu.all.map{|sh|[sh.reason_desc , sh.id]}  #test ok by rails c 
    #@whylearn = Whylearn.all.map{|sw|[sw.reason_desc , sw.id]}    #test ok by rails c
    render :layout =>"test_layout"
  end

  def search_report    
    #start_at = Time.parse(params[:start_at])
    start_at = DateTime.strptime(params[:start_at], "%m/%d/%Y")
    #end_at = Time.parse(params[:end_at])   
    end_at = DateTime.strptime(params[:end_at], "%m/%d/%Y")
    @whylearn_ids = params['whylearn_ids'].map{|i|i.to_i > 0 ? i.to_i : nil}.compact
    @howuknowu_ids = params['howuknowu_ids'].map{|i|i.to_i > 0 ? i.to_i : nil}.compact
    @graduated_ids = params['graduated_ids'].map{|i|i.to_i > 0 ? i.to_i : nil}.compact
    @kojenadults = Kojenadult.from('kojenadults AS s').joins("
    INNER JOIN kojenadult_adults_whylearnships AS ka ON ka.kojenadult_id = s.id AND ka.adults_whylearn_id IN (#{@whylearn_ids.join(',')})
    INNER JOIN kojenadult_adults_howyouknowuships AS ah ON ah.kojenadult_id = s.id AND ah.adults_howyouknowu_id IN (#{@howuknowu_ids.join(',')})
    INNER JOIN kojenadult_adults_graduatedships AS ag ON ag.kojenadult_id = s.id AND ag.adults_graduated_id IN (#{@graduated_ids.join(',')})  
    INNER JOIN kojenadults ON (kojenadults.id = ka.kojenadult_id AND kojenadults.id = ah.kojenadult_id AND kojenadults.id = ag.kojenadult_id AND 
        kojenadults.created_at BETWEEN 
        DATE('#{start_at.strftime("%Y/%m/%d")}') AND
        DATE('#{end_at.strftime("%Y/%m/%d")}'))
      ")  
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
  
  # GET /kojenadults/search
  # GET /kojenadults/search.xml
  # 全文檢索
  def search
    @kojenadults = Kojenadult.search do
      keywords params[:query]
    end.results

    respond_to do |format|
      format.html { render :action => "index" }
      format.xml  { render :xml => @kojenadults }
    end
  end

end  