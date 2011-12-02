# encoding: utf-8
class Kojenadult < ActiveRecord::Base
 #採用過濾器
  before_save :fix_cname
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
  has_many :kojenadult_adults_whylernship, :dependent => :destroy
  has_many :adults_whylearn, :through => :kojenadult_adults_whylernship  
  #請問您是在何種動機，開始進修美
  has_many :kojenadult_adults_whatexamedship, :dependent => :destroy
  has_many :adults_whatexamed, :through => :kojenadult_adults_whatexamedship
  #請問您參加過何種國際的英語能力認證
  has_many :kojenadult_adults_localexamedship, :dependent => :destroy
  has_many :adults_localexamed, :through => :kojenadult_adults_localexamedship
  #請問您參加過何種國家認證的英語能力認證
  has_many :kojenadult_classe_ship, :dependent => :destroy
  has_many :kojenadult_classe, :through => :kojenadult_classe_ship
  #您選了那些課程
end