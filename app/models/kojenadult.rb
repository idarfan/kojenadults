# encoding: utf-8
class Kojenadult < ActiveRecord::Base
  #採用過濾器
  #before_save :fix_cname
  
  #記算年齡的方法
  def age
    now = Time.now.utc.to_date
    dob = self.birthday
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  #使用私有方法 fix_cname
  private
  def fix_cname
    self.cname = self.cname.gsub(/[\w\s\b\$[:punct:]]/ , '')
  end  
  #
  has_many :kojenadult_adults_graduatedship, :dependent => :destroy
  has_many :adults_graduated, :through => :kojenadult_adults_graduatedship
  #您從什麼學校畢業的?
  has_many :kojenadult_adults_howyouknowuship, :dependent => :destroy
  has_many :adults_howyouknowu, :through => :kojenadult_adults_howyouknowuship
  #您是如何知道我們的 
  has_many :kojenadult_adults_whylearnship, :dependent => :destroy
  has_many :adults_whylearn, :through => :kojenadult_adults_whylearnship  
  #請問您是在何種動機，開始進修美語
  has_many :kojenadult_adults_whatexamedship, :dependent => :destroy
  has_many :adults_whatexamed, :through => :kojenadult_adults_whatexamedship
  #請問您參加過何種國際的英語能力認證
  has_many :kojenadult_adults_localexamedship, :dependent => :destroy
  has_many :adults_localexamed, :through => :kojenadult_adults_localexamedship
  #請問您參加過何種國家認證的英語能力認證  
  has_many :kojenadult_classe, :dependent => :destroy
  #當刪除了kojenadult刪了該筆學生記錄後,會因依賴關係把kojenadult_classe 裏的選課資料一併刪除
  #您選了那些課程
  has_many :lessonrecord, :dependent => :destroy
  #新增kojenadult_session_descriptionship 及 adults_session_description
  has_many :kojenadult_session_descriptionship, :dependent => :destroy
  has_many :adults_session_description, :through => :kojenadult_session_descriptionship
  #新增kojenadult_adults_classtypeship 及 adults_classtype課程類
  #has_many :kojenadult_adults_classtypeship, :dependent => :destroy
  #has_many :adults_classtype, :through => :kojenadult_adults_classtypeship
  #新增adults_refinement_lesson 及 kojenadult_adults_refinement_lessonship精緻班課程選項
  #has_many :kojenadult_adults_refinement_lessonship, :dependent => :destroy
  #has_many :adults_refinement_lesson, :through => :kojenadult_adults_refinement_lessonship
  #底下為資料輸入項目檢查原則
  validate :check_whylearn #檢查學習英文動機是否有勾選否則請填寫其它欄位  
  validate :check_adults_howyouknowu # 檢查您看些什麼網站及雜誌 
  validate :check_graduated # 請輸入您的學歷
  def check_graduated
    if self.adults_graduated_ids.empty? && self.graduated_other.blank?
      errors[:請填寫您的學歷] << " : 請您必須勾選上述的選項或至少填寫其他學歷的欄位"
    end
  end 
  #使用了第39行的寫法。便能達成即使勾選了其它(8)。但whylearn_other欄位空白仍會提示錯誤訊息
  def check_whylearn
    if self.adults_whylearn_ids.include?(8) && self.whylearn_other.blank?
      errors[:其他學習動機] << " : 請您必須勾選上述的選項或至少填寫其他學習動機的欄位"
    end
  end   
  #使用了第45行的寫法。便能達成即使勾選了其它(13)。但whylearn_other欄位空白仍會提示錯誤訊息
  def check_adults_howyouknowu
    if self.adults_howyouknowu_ids.empty? || self.adults_howyouknowu_ids.index(13) && self.howyouknowus_other.blank?
      errors[:其他您經常閱讀的雜誌或網站] << " : 請您必須勾選上述的選項或至少填寫其他經常閱讀的雜誌或網站"
    end
  end   
  #條件驗證式開始
  validates :student_id,  :presence => true,
    :uniqueness => true,
    :length => {:minimum => 12, :maximum => 13}				  
  # 輸入學生id ,範圍由 xxxx-xxxxx 不可不填. 不可以有重複 				  
  validates :cname,  :presence => true, :on => :create
  validates_format_of :cname, :with => /[\u4e00-\u9fa5]/, :message => "請輸入中文"
  #確保必填個及必需輸入中文
  validates_length_of :cname, :presence => true, :in => 2..12, :allow_nil => false, :on => :update
  #:length => {:minimum => 2, :maximum => 12}
  # 中文姓名最少2個字,最多12個字	不可以不填
  validates :email, :presence => true, 
    :length => {:minimum => 3, :maximum => 254}  
  # 電子郵件最少3個字最多 254個字,不可以不填,可以有重複
  validates :ename,  :length => {:minimum => 2, :maximum => 254}
  #英文姓名最少淤三個字,最多254字. 可以不填				  
  validates :birthday,  :presence => true                  
  #生日不能不填				  
  validates :gender,  :presence => true
  #性別不能不填			  
  validates :address,  :presence => true, 
    :length => {:minimum => 2, :maximum => 254}  
				  
  validates :telephone, :length => {:minimum => 3, :maximum => 254}
  #電話欄位可以空白				  
  validates :mobile_phone,  :presence => true, 
    :length => {:minimum => 3, :maximum => 254}
  #行動電話欄位不可以空白
 
  ## 底下的是條件驗證式的錯誤訊息說明
  validates :student_id,  :presence => { :message => "學生號碼欄位不能空白" }, 
    :length => {:minimum => 12, :maximum => 13, :message => "學生號碼長度不正確" }
  #驗證學號		
  validates :cname,  :presence => { :message => "姓名欄位不能空白" }, 
    :length => {:minimum => 2, :maximum => 12, :message => "姓名欄位長度不正確" }
  #驗證姓名 		  
  validates :email,  :presence => { :message => "電子郵件欄位不能空白" }, 
    :length => {:minimum => 3, :maximum => 254, :message => "電子郵件欄位長度不正確" }
  #驗證電子郵件
  validates :birthday,  :presence => { :message => "生日欄位不能空白" }     
  #驗證生日
  validates :gender,  :presence => { :message => "姓別欄位不能空白" }
  #驗證姓別
  validates :address,  :presence => { :message => "住址欄位不能空白" }, 
    :length => {:minimum => 2, :maximum => 254, :message => "住址欄位長度不正確" }
  #驗證住址
  validates :telephone, :length => {:minimum => 3, :maximum => 14, :message => "電話欄位長度不正確" }
  #驗證電話
  validates :mobile_phone,  :presence => { :message => "行動電話欄位不能空白" }, 
    :length => {:minimum => 10, :maximum => 20, :message => "行動電話欄位長度不正確" }
  #驗證行動電話  
  searchable do
    text :cname, :ename, :email, :student_id,:telephone, :mobile_phone, :parents_phone, :company_phone, :jobs, :session_description
  end
end