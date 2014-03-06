Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :reports, :only => [] do
      collection do
        get   :my_new_report
        post  :my_new_report
      end
    end
  end

end
