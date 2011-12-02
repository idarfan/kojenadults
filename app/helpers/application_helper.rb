# encoding : utf-8
module ApplicationHelper
  def js(*js_s)
    @js ||= []
    js_s.each do |js_name|
      @js << js_name unless @js.index(js_name)
    end
  end
  def js_load
    return @js ||= []
  end
  def css(*css_s)
    @css ||= []
    css_s.each do |css_name|
      @css << css_name unless @css.index(css_name)
    end
  end
  def css_load
    return @css ||= []
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= Stafflogin.first(:conditions => ["id = ?" , session[:user_id]])
      if @current_user
        return @current_user
      else
        session[:user_id] = nil
        return nil
      end
    else
      return nil
    end
  end
  
  def area_select_tag(name = nil)
    js("sub_area")
    return "<select name='#{name ? "#{name}[main_area]" : "main_area"}' class='main_area' rel='%,%'>
  <option value='%' >城市↓</option>
  <option value='0' >基隆市</option>
  <option value='1' >台北市</option>
  <option value='2' >新北市</option>
  <option value='3' >桃園縣</option>
  <option value='4' >新竹市</option>
  <option value='5' >新竹縣</option>
  <option value='6' >苗栗縣</option>
  <option value='7' >台中市</option>
  <option value='8' >彰化縣</option>
  <option value='9' >南投縣</option>
  <option value='10' >雲林縣</option>
  <option value='11' >嘉義市</option>
  <option value='12' >嘉義縣</option>
  <option value='13' >台南市</option>
  <option value='14' >高雄市</option>
  <option value='15' >屏東縣</option>
  <option value='16' >台東縣</option>
  <option value='17' >花蓮縣</option>
  <option value='18' >宜蘭縣</option>
  <option value='19' >澎湖縣</option>
  <option value='20' >金門縣</option>
  <option value='21' >連江縣</option>
</select><select name='#{name ? "#{name}[sub_area]" : "sub_area"}' class='sub_area'>
  <option value='%'>地區↓</option>
</select>"
  end
  def area_select(f)
    js("sub_area")
    model = f.object.class.name.underscore
    sub_area_init = ""
    if f.object.sub_area != nil && f.object.main_area != nil
      sub_area_init = f.object.main_area.to_s + "," + f.object.sub_area.to_s
    else
      sub_area_init = "%,%"
    end
    return "<select name='#{model}[main_area]' class='main_area' rel='#{sub_area_init}'>
  <option value='%' >城市↓</option>
  <option value='0' >基隆市</option>
  <option value='1' >台北市</option>
  <option value='2' >新北市</option>
  <option value='3' >桃園縣</option>
  <option value='4' >新竹市</option>
  <option value='5' >新竹縣</option>
  <option value='6' >苗栗縣</option>
  <option value='7' >台中市</option>
  <option value='8' >彰化縣</option>
  <option value='9' >南投縣</option>
  <option value='10' >雲林縣</option>
  <option value='11' >嘉義市</option>
  <option value='12' >嘉義縣</option>
  <option value='13' >台南市</option>
  <option value='14' >高雄市</option>
  <option value='15' >屏東縣</option>
  <option value='16' >台東縣</option>
  <option value='17' >花蓮縣</option>
  <option value='18' >宜蘭縣</option>
  <option value='19' >澎湖縣</option>
  <option value='20' >金門縣</option>
  <option value='21' >連江縣</option>
</select><select name='#{model}[sub_area]' class='sub_area'>
  <option value='%'>地區↓</option>
</select>"
  end
  def area_name(target , is_brake = false)
    return Area.show_area(target , is_brake)
  end
  def area_zip(target)
    return Area.show_zip(target)
  end
end