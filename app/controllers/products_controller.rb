class ProductsController < ApplicationController
  before_filter :require_login, :except => :index

  def index
    #Get filter options
    @manufacturers = [["Any", ""]] + Manufacturer.order(:name).collect{|m| [m.name,m.id]}
    @device_types = [["Any",""]] + DeviceType.order(:name).collect{|d| [d.name,d.id]}
    @protocols = [["Any",""]] + Protocol.order(:name).collect{|p| [p.name,p.id]}

    #Set Default Selection for filters
    if params[:filter] 
      @manufacturer = params[:filter][:manufacturer_id] 
      @device_type = params[:filter][:device_type_id]
      @protocol = params[:filter][:protocol_id]
    end

    #Get product list
    if params[:order]
      @products = @products.send(params[:order]) 
    else
      @products = Product.order(:id)
    end

    #Apply filters
    if params[:filter]
      params[:filter].each do |key,value|
        @products = @products.where(key => value) unless value.blank?
      end
    end
    
    #Paginate
    @products = @products.paginate(:page => params[:page],
                                   :per_page => (params[:per_page] or 30))
  end

  def show

  end
end
