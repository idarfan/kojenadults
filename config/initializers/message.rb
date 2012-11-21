# To change this template, choose Tools | Templates
# and open the template in the editor.

class Message < ActiveRecord::Base
  def self.human_attribute_name(*attribute)
    super(*attribute)
    return ""
  end
end