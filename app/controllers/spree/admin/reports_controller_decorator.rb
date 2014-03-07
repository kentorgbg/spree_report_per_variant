Spree::Admin::ReportsController.class_eval do
  before_filter :setup_reporting_per_variant, only: [:index]

  def my_new_report
    
    @products = {}
    
    line_item_groups = (Spree::Order.all.where(:state => "complete")).map{ |order| order.line_items }
    line_item_groups.each do |line_items|
      line_items.each do |line_item|
        product = line_item.product

        @products[product] = {} unless @products.include?(product)
        current_product = @products[product]

        if current_product.include?(line_item.variant)
          current_product[line_item.variant] += line_item.quantity
        else
          current_product[line_item.variant] = line_item.quantity
        end
      end
    end


  end

  protected

  def setup_reporting_per_variant
    Spree::Admin::ReportsController.add_available_report!(:my_new_report)
  end

end
