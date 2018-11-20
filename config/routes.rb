Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get "top", to: 'restaurants#top'
    end
    # get "restaurants/top", to: 'restaurants#top'

    member do
      get "chef", to: 'restaurants#chef'
    end
    # get "restaurants/:id/chef", to: 'restaurants#chef'
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
