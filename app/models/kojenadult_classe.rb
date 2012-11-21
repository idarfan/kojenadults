# encoding: utf-8
class KojenadultClasse < ActiveRecord::Base
  set_table_name "kojenadult_classes"
  #belongs_to :kojenadult
  has_many :kojenadults_classe_ship 
  has_many :kojenadult, :through => :kojenadults_classe_ship
  #has_many :kojenadults_classe_ship, :dependent => :destroy
  #has_many :kojenadult_classe, :through => :kojenadults_classe_ship
  #validate :check_student_id # 請輸入學生id
  #def check_student_id
  #  if self.student_id.empty? && self.student_id.blank?
  #    errors[:請填寫學生id] << " : 請您必須填寫學生id欄位"
  #  end
  #end
  validates :student_id,  :presence =>  {:message => "請您必須填寫學生id"}, 
    :uniqueness => {:message => "學生id已經被使用"},
    :length => {:message => "學生id最短4個數字,最長12個數字", :minimum => 4, :maximum => 12}    	
end