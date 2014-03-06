Spree::Admin::ReportsController.class_eval do
  before_filter :setup_reporting_per_variant, only: [:index]

  def my_new_report

  end

  protected

  def setup_reporting_per_variant
    Spree::Admin::ReportsController.add_available_report!(:my_new_report)
  end

end
