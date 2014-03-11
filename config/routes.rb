Spree::Core::Engine.routes.draw do

  # Show reports per variant
  namespace :admin do
    resources :reports, :only => [] do
      collection do
        get   :report_per_variant
        post  :report_per_variant
      end
    end
  end

end
