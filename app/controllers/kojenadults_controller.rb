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
    @adults_classtypes = AdultsClasstype.all
    @adults_refinement_lessons = AdultsRefinementLesson.all
    @adults_units = AdultsUnit.all
    @adults_licenses = AdultsLicense.all
    @adults_separates = AdultsSeparate.all
    @adults_japans = AdultsJapan.all
    @adults_onlines = AdultsOnline.all
    if ! @kojenadult.student_id.nil? #unless @kojenadult.student_id.nil? if ! @kojenadult.student_id.empty? 
      @kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
      @adults_graduateds = AdultsGraduated.all
      @adults_howyouknowus = AdultsHowyouknowu.all
      @adults_localexameds = AdultsLocalexamed.all
      @adults_whatexameds = AdultsWhatexamed.all
      @adults_whylearns = AdultsWhylearn.all
      @adults_session_descriptions = AdultsSessionDescription.all      
    end 
    if @kojenadult_classes == nil
      #redirect_to(@kojenadult, :notice => 'Kojenadult_classes have no record.')
      #redirect_to(:action => :index,:notice => 'Kojenadult_classes have no record')
      #redirect_to(:action => :index, flash[:notice] => '查無該筆學生選課記錄')
      flash[:notice] = "查無該筆學生選課記錄！" 
      redirect_to:action => :index              
    else   
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @kojenadult }    
      end       
    end
  end

  # GET /kojenadults/new
  # GET /kojenadults/new.xml
  def new 
    #raise Exception.new(params.inspect)
    @kojenadult = Kojenadult.new   
    #@kojenadult.adults_classtype = AdultsClasstype.all
    @adults_classtypes = AdultsClasstype.all
    @adults_refinement_lessons = AdultsRefinementLesson.all
    @adults_units = AdultsUnit.all
    @adults_licenses = AdultsLicense.all
    @adults_separates = AdultsSeparate.all
    @adults_japans = AdultsJapan.all
    @adults_onlines = AdultsOnline.all
    #@adults_classtypes = AdultsClasstype.find_by_reason_desc(params.delete(adults_classtype))
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
    @adults_classtypes = AdultsClasstype.all
    @adults_refinement_lessons = AdultsRefinementLesson.all
    @adults_units = AdultsUnit.all
    @adults_licenses = AdultsLicense.all
    @adults_separates = AdultsSeparate.all
    @adults_japans = AdultsJapan.all
    @adults_onlines = AdultsOnline.all
    #@kojenadult.adults_classtype = [@adults_classtypes]
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
    @adults_classtypes = AdultsClasstype.all
    @adults_refinement_lessons = AdultsRefinementLesson.all
    @adults_units = AdultsUnit.all
    @adults_licenses = AdultsLicense.all
    @adults_separates = AdultsSeparate.all
    @adults_japans = AdultsJapan.all
    @adults_onlines = AdultsOnline.all
    #@adults_classtypes = AdultsClasstype.where("kojenadult_id = #{@kojenadult.kojenadult_id}")
    #@adults_classtypes = AdultsClasstype.find_by_reason_desc(params.delete(adults_classtype))
    #@adults_classtypes = AdultsClasstype.find_by_reason_desc(params[:kojenadult][:adults_classtype])
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
    @adults_classtypes = AdultsClasstype.all
    @adults_refinement_lessons = AdultsRefinementLesson.all
    @adults_units = AdultsUnit.all
    @adults_licenses = AdultsLicense.all
    @adults_separates = AdultsSeparate.all
    @adults_japans = AdultsJapan.all
    @adults_onlines = AdultsOnline.all
    #@kojenadult.adults_classtype = [@adults_classtypes]
    #@adults_classtypes = AdultsClasstype.where("kojenadult_id = #{@kojenadult.kojenadult_id}")
    #@kojenadult_classes = KojenadultClasse.where("student_id = #{@kojenadult.student_id}")
    @kojenadult_classes = KojenadultClasse.all
    @adults_graduateds = AdultsGraduated.all
    @adults_howyouknowus = AdultsHowyouknowu.all
    @adults_localexameds = AdultsLocalexamed.all
    @adults_whatexameds = AdultsWhatexamed.all
    @adults_whylearns = AdultsWhylearn.all
    @adults_session_descriptions = AdultsSessionDescription.all
    

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
    #@adults_session_descriptions = AdultsSessionDescription.all    
    #@kojenadult_class = KojenadultClasse.find("student_id = #{@kojenadult.student_id}")           
    #@kojenadult_class.destroy  

    respond_to do |format|
      format.html { redirect_to(kojenadults_url) }
      format.xml  { head :ok }
    end
  end
  
  def search #註解掉會遭到不幸 by idarfan
    #@level = Incomelevel.all.map{|im|[im.reason_desc , im.id]}    
    #@howuknowu = Howuknowu.all.map{|sh|[sh.reason_desc , sh.id]}   
    #@whylearn = Whylearn.all.map{|sw|[sw.reason_desc , sw.id]}    
    render :layout =>"test_layout"
  end

  def search_report    
    if params[:whylearn_ids].nil? or params[:whylearn_ids].empty?
      flash[:notice] = "請選取欲查詢的起始日期及結束日期,並勾選為何學習英文的選項!"       
      redirect_to:action => :search1
    elsif params[:howuknowu_ids].nil? or params[:howuknowu_ids].empty?
      flash[:notice] = "請選取欲查詢的起始日期及結束日期,並勾選如何知道我們的選項!"
      redirect_to:action => :search1       
    elsif params[:graduated_ids].nil? or params[:graduated_ids].empty?
      flash[:notice] = "請選取欲查詢的起始日期及結束日期,並勾選要查詢學歷的選項!"
      redirect_to:action => :search1       
    else
      begin
        start_at = DateTime.strptime(params[:start_at], "%m/%d/%Y")                        
        end_at = DateTime.strptime(params[:end_at], "%m/%d/%Y")        
        start_age_at = Time.now - params[:end_age_at].to_i.years - 1.year
        end_age_at = Time.now - params[:start_age_at].to_i.years 
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
        DATE('#{end_at.strftime("%Y/%m/%d")}') AND
        kojenadults.birthday >= DATE('#{start_age_at.strftime("%Y/%m/%d")}') AND kojenadults.birthday < DATE('#{end_age_at.strftime("%Y/%m/%d")}'))            
          ")
        if @kojenadults.nil? || @kojenadults.size.zero?
          flash[:notice] = "查詢不到符合條件的學生記錄！"                 
        else
          flash[:notice] = "總共查詢到#{@kojenadults.size}筆記錄"
        end   
        @kojenadults = @kojenadults.paginate(:page => params[:page], :per_page => 10)
        #render :search_report :layout => "text_layout" # 這邊要明確的指示render
        #render :layout => "test_layout" <= 怪怪用了它會遭到不幸,會無法調出資料
      rescue Exception => e
        flash[:notice] = "請選取欲查詢的起始日期及結束日期!"
        redirect_to :action => :search1       
      end
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
  
  # GET /kojenadults/search
  # GET /kojenadults/search.xml
  # 全文檢索
  def search  
    @kojenadults = Kojenadult.search do 
      keywords params[:query]
      #order_by <= can't wokr right now
      paginate :page => 1, :per_page => 10, :offset => 0    
    end.results    

    respond_to do |format|
      format.html { render :action => "index" }
      format.xml  { render :xml => @kojenadults }
    end
  end
end  