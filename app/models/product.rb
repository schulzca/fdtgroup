class Product < ActiveRecord::Base
  has_and_belongs_to_many :oses
  belongs_to :device_type
  belongs_to :manufacturer
  belongs_to :protocol

  class_eval do
    ['asc', 'desc'].each do |order|
      ['manufacturer_id', 'device_version', 'dtm_version', 'device_type_id', 
       'protocol_id', 'specification'].each do |type|
        scope "#{type}_#{order}".to_sym, order("#{type} #{order}") 
      end
    end
  end
end
