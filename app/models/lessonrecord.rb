# encoding: utf-8
class Lessonrecord < ActiveRecord::Base
  belongs_to :kojenadult
  
  validates :lesson,  :presence =>  {:message => "請您必須填寫課程名稱"}
  searchable do
    text :cname, :ename, :lesson, :student_id
  end
end
