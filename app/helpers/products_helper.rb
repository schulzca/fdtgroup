module ProductsHelper
  def header_link title, field
    suffix = 'asc'
    order = params[:order]
    if order
      if params[:order].starts_with?(field) and params[:order].ends_with?('asc')
        suffix = 'desc'
      end
    end
    
    params[:order] = "#{field}_#{suffix}"
    result = link_to(title, products_path(params)).html_safe
    params[:order] = order
    result
  end
end
