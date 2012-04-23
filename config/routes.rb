WeddingPlanner::Application.routes.draw do
  root :to => "pages#home"
  scope "/myconfetti-test" do
    get "log_out" => "sessions#destroy", :as => "log_out"
    get "log_in" => "sessions#new", :as => "log_in"
    get "sign_up" => "users#new", :as => "sign_up"
    root :to => "pages#home"
    resources :users
    resources :sessions
    resource :budget do
      put 'sort', on: :collection
    end
  end
end
